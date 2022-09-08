import 'package:flutter/material.dart';

class IconAds extends StatelessWidget {
  final String image;
  const IconAds({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        10,
        12,
        0,
        12,
      ),
      child: Image.asset(image),
    );
  }
}
