import 'package:flutter/material.dart';

class HomeMainBanner extends StatelessWidget {
  const HomeMainBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
        width: double.infinity,
        height: 250,
        color: Colors.red,
        child: Image(
            image: NetworkImage(
                "https://cdnb.artstation.com/p/assets/images/images/038/132/269/large/rnj-krishna-sanjeev-jangid-bike-cycle-banner.jpg?1622254445")),
      ),
    );
  }
}
