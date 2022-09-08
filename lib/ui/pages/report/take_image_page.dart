import 'package:flutter/material.dart';

import '../../../shared/theme.dart';

class TakeImagePage extends StatelessWidget {
  const TakeImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget? appBar() {
      return AppBar(
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/icon_arrow_left.png',
              width: 24,
              height: 24,
            ),
            Text(
              'Ambil Foto',
              style: whiteTextStyle.copyWith(
                fontSize: 18,
                fontWeight: bold,
              ),
            ),
            Image.asset(
              'assets/icon_arrow_right.png',
              width: 24,
              height: 24,
            )
          ],
        ),
      );
    }

    return Scaffold(
      appBar: appBar(),
      body: ListView(
        children: [
          Image.asset(
            'assets/image_take.png',
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.only(left: defaultMargin),
            width: double.infinity,
            height: 60,
            color: kPrimaryColor,
            child: Row(
              children: [
                Text(
                  'Ambil Dari Galeri',
                  style:
                      whiteTextStyle.copyWith(fontWeight: bold, fontSize: 18),
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/icon_arrow_chevron_bottom.png',
                  width: defaultMargin,
                  height: defaultMargin,
                  color: kWhiteColor,
                )
              ],
            ),
          ),
          GridView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            children: [
              Image.asset(
                'assets/image_take_2.png',
                height: 50,
              ),
              Image.asset(
                'assets/image_take_3.png',
                height: 50,
              ),
              Image.asset(
                'assets/image_take_4.png',
                height: 50,
              ),
              Image.asset(
                'assets/image_take_5.png',
                height: 50,
              ),
              Image.asset(
                'assets/image_take_6.png',
                height: 50,
              ),
            ],
          )
        ],
      ),
    );
  }
}
