import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:frontend_design/provider/theme_provider.dart';
import 'package:frontend_design/screens/screens.dart';
import 'package:frontend_design/services/auth_service.dart';
import 'package:frontend_design/shared/preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => AuthService(),
      ),
      ChangeNotifierProvider(
        create: (_) => ThemeProvider(isDarkmode: Preferences.isDarkmode),
      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "checking",
      routes: {
        "checking": (_) => const CheckAuthScreen(),
        "login": (_) => const LoginScreen(),
        "register": (_) => const RegisterScreen(),
        "home": (_) => const HomeScreen(),
        "instructions": (_) => const InstructionsScreen(),
        "settings": (_) => const SettingsScreen(),
        "basic_design": (_) => const BasicDesignScreen(),
        "scroll_design": (_) => const ScrollDesignScreen(),
        "complete_design": (_) => const CompleteDesignScreen(),
      },
      theme: Provider.of<ThemeProvider>(context).currentTheme,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: const Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
