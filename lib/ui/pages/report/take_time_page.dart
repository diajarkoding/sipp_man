import 'package:flutter/material.dart';

import '../../../shared/theme.dart';
import '../../widget/custom_icon_button.dart';

class TakeTimePage extends StatelessWidget {
  const TakeTimePage({Key? key}) : super(key: key);

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
            CustomIconButton(
              onTap: () => Navigator.pop(context),
              icon: 'assets/icon_arrow_left.png',
              size: defaultMargin,
            ),
            Text(
              'Waktu',
              style: whiteTextStyle.copyWith(
                fontSize: 18,
                fontWeight: bold,
              ),
            ),
            CustomIconButton(
              onTap: () => Navigator.pop(context),
              icon: 'assets/icon_arrow_right.png',
              size: defaultMargin,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: appBar(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icon_arrow_caret_left.png',
                  width: defaultMargin,
                  height: defaultMargin,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: Text(
                    'PM',
                    style: primaryTextStyle.copyWith(
                        fontSize: 18, fontWeight: bold),
                  ),
                ),
                Center(
                  child: Image.asset(
                    'assets/icon_arrow_caret_right.png',
                    width: defaultMargin,
                    height: defaultMargin,
                  ),
                ),
              ],
            ),
          ),
          Image.asset('assets/image_clock.png'),
          Padding(
            padding: EdgeInsets.symmetric(vertical: defaultMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(defaultRadius),
                        bottomLeft: Radius.circular(defaultRadius),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '08 : 30 PM',
                        style: blackTextStyle.copyWith(
                            fontSize: 15, fontWeight: bold),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 34,
                  height: 40,
                  color: kPrimaryColor,
                  child: Center(
                    child: Image.asset(
                      'assets/icon_arrow_unfold_more.png',
                      width: defaultMargin,
                      height: defaultMargin,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(defaultRadius),
                        bottomRight: Radius.circular(defaultRadius),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '_ _ : _ _ PM',
                        style: blackTextStyle.copyWith(
                            fontSize: 15, fontWeight: bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Image.asset('assets/image_calendar.png'),
          SizedBox(
            height: defaultMargin,
          )
        ],
      ),
    );
  }
}
