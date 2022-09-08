import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class ProfileTile extends StatelessWidget {
  final String icon;
  final String text;
  const ProfileTile({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            icon,
            width: defaultMargin,
            height: defaultMargin,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            text,
            style: blackTextStyle.copyWith(fontSize: 15),
          ),
          const Spacer(),
          Image.asset(
            'assets/icon_pencil.png',
            width: 15,
            height: 15,
            color: kBlackColor,
          ),
        ],
      ),
    );
  }
}
