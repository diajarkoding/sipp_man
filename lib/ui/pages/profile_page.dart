import 'package:flutter/material.dart';
import 'package:sipp_man/ui/widget/line_divider.dart';
import 'package:sipp_man/ui/widget/profile_tile.dart';

import '../../shared/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget? appBar() {
      return AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColor,
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: defaultRadius,
            ),
            child: Image.asset(
              'assets/icon_logout.dart',
              width: 30,
              height: 30,
            ),
          )
        ],
        title: Text(
          'Profile',
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: bold,
          ),
        ),
      );
    }

    Widget header() {
      return Container(
        height: 140,
        color: kBackgroundColor,
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset('assets/image_profile.png'),
                  ),
                ),
                SizedBox(
                  width: defaultMargin,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tyara Sizedbox',
                            style: blackTextStyle.copyWith(
                                fontSize: 24, fontWeight: bold),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Image.asset(
                              'assets/icon_pencil.png',
                              width: 15,
                              height: 15,
                              color: kBlackColor,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/icon_id_card.png',
                            width: defaultMargin,
                            height: defaultMargin,
                            color: kBlackColor,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            '2930119988',
                            style: blackTextStyle.copyWith(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/icon_call_outline.png',
                            width: defaultMargin,
                            height: defaultMargin,
                            color: kBlackColor,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            '081234567890',
                            style: blackTextStyle.copyWith(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            LineDivider(
              top: defaultMargin,
              bottom: 0,
              color: kPrimaryColor.withOpacity(0.5),
            )
          ],
        ),
      );
    }

    Widget dataUser() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 150, bottom: defaultMargin),
            child: Text(
              'Data Pribadi',
              style: blackTextStyle.copyWith(
                  fontSize: defaultRadius, fontWeight: bold),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 15,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xffFFFFFF),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(0, 2),
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ProfileTile(
                  icon: 'assets/icon_mail.png',
                  text: 'tyarasizedbox@gmail.com',
                ),
                LineDivider(
                  top: 0,
                  bottom: 0,
                  color: kPrimaryColor.withOpacity(0.5),
                ),
                const ProfileTile(
                  icon: 'assets/icon_home_check.png',
                  text: 'Tasikmalaya',
                ),
                LineDivider(
                  top: 0,
                  bottom: 0,
                  color: kPrimaryColor.withOpacity(0.5),
                ),
                const ProfileTile(
                  icon: 'assets/icon_calendar_week.png',
                  text: '06 Maret 2005',
                ),
                LineDivider(
                  top: 0,
                  bottom: 0,
                  color: kPrimaryColor.withOpacity(0.5),
                ),
                const ProfileTile(
                  icon: 'assets/icon_location.png',
                  text: 'Perum Muncang',
                ),
                LineDivider(
                  top: 0,
                  bottom: 0,
                  color: kPrimaryColor.withOpacity(0.5),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      );
    }

    Widget dataPrakerin() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: defaultMargin),
            child: Text(
              'Data Prakerin',
              style: blackTextStyle.copyWith(
                  fontSize: defaultRadius, fontWeight: bold),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 15,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xffFFFFFF),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(0, 2),
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/icon_calendar_2.png',
                        width: defaultMargin,
                        height: defaultMargin,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        '04 januari 2021 - 04 januari 2022',
                        style: blackTextStyle.copyWith(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                LineDivider(
                  top: 0,
                  bottom: 0,
                  color: kPrimaryColor.withOpacity(0.5),
                ),
                const ProfileTile(
                  icon: 'assets/icon_user_2.png',
                  text: 'Muhamad Ryan',
                ),
                LineDivider(
                  top: 0,
                  bottom: 0,
                  color: kPrimaryColor.withOpacity(0.5),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/icon_home.png',
                        color: kBlackColor,
                        width: defaultMargin,
                        height: defaultMargin,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        'PT Alvaro Satya Nusa',
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
                ),
                LineDivider(
                  top: 0,
                  bottom: 0,
                  color: kPrimaryColor.withOpacity(0.5),
                ),
                const ProfileTile(
                  icon: 'assets/icon_location.png',
                  text: 'Jl. Sukarno Hatta',
                ),
                LineDivider(
                  top: 0,
                  bottom: 0,
                  color: kPrimaryColor.withOpacity(0.5),
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget content() {
      return ListView(
        children: [
          dataUser(),
          dataPrakerin(),
          Container(
            margin: const EdgeInsets.only(
              top: 20,
              bottom: 70,
            ),
            width: double.infinity,
            height: 50,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: kPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17),
                ),
              ),
              onPressed: () => Navigator.pushNamed(context, '/main-page'),
              child: Text(
                'Simpan',
                style: whiteTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: bold,
                ),
              ),
            ),
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: appBar(),
      body: Padding(
        padding: EdgeInsets.all(defaultMargin),
        child: Stack(
          children: [
            content(),
            header(),
          ],
        ),
      ),
    );
  }
}
