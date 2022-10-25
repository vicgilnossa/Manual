import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import "package:http/http.dart" as http;

class AuthService extends ChangeNotifier {
  final String _baseUrl = "identitytoolkit.googleapis.com";
  final String _firebaseToken = "AIzaSyC1B8LAMvKESB2l0qGldf1PZiPngg_O-r0";
  final storage = FlutterSecureStorage();
  Future<String?> createUser(String email, String password) async {
    final Map<String, dynamic> authData = {
      "email": email,
      "password": password
    };

    final url =
        Uri.https(_baseUrl, "/v1/accounts:signUp", {"key": _firebaseToken});

    final resp = await http.post(url, body: json.encode(authData));
    final Map<String, dynamic> decodedResp = json.decode(resp.body);

    if (decodedResp.containsKey("idToken")) {
      await storage.write(key: "token", value: decodedResp["idToken"]);
      return null;
    } else {
      return decodedResp["error"]["message"];
    }
  }

  Future<String?> loginUser(String email, String password) async {
    final Map<String, dynamic> authData = {
      "email": email,
      "password": password
    };

    final url = Uri.https(
        _baseUrl, "/v1/accounts:signInWithPassword", {"key": _firebaseToken});

    final resp = await http.post(url, body: json.encode(authData));
    final Map<String, dynamic> decodedResp = json.decode(resp.body);

    if (decodedResp.containsKey("idToken")) {
      await storage.write(key: "token", value: decodedResp["idToken"]);
      return null;
    } else {
      return decodedResp["error"]["message"];
    }
  }

  Future logout() async {
    await storage.delete(key: "token");
    return;
  }

  Future<String> readToken() async {
    return await storage.read(key: "token") ?? "";
  }
}
