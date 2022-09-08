import 'package:flutter/material.dart';
import 'package:sipp_man/ui/widget/icon_ads.dart';

import '../../shared/theme.dart';

class BannerAds extends StatelessWidget {
  const BannerAds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      color: kGreenColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 9),
                child: IconAds(
                  image: 'assets/icon_bas.png',
                ),
              ),
              Text(
                'Ini Space Untuk Iklan',
                style: whiteTextStyle.copyWith(
                  fontWeight: bold,
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Icon(
                Icons.close,
                size: 15,
                color: kWhiteColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
