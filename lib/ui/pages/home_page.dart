import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sipp_man/shared/theme.dart';
import 'package:sipp_man/ui/widget/report_card.dart';
import 'package:sipp_man/ui/widget/line_divider.dart';

import '../widget/custom_icon_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget body() {
      return ListView(
        children: [
          const SizedBox(
            height: 190,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 80),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: kBackgroundColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: Image.asset('assets/image_profile.png'),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 14),
                        width: double.infinity,
                        height: 50,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: kGreenColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/report-page');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/icon_pencil.png',
                                width: 24,
                                height: 24,
                              ),
                              const SizedBox(
                                width: 14,
                              ),
                              Text(
                                'Tulis Laporan',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 15,
                                  fontWeight: bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                LineDivider(
                  top: 15,
                  bottom: 10,
                  color: kPrimaryColor.withOpacity(0.5),
                ),
                // Laporan
                Text(
                  'Laporanmu',
                  style: primaryTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
                const ReprtCard(
                  isDone: false,
                ),
                const ReprtCard(
                  isDone: true,
                ),
                const ReprtCard(
                  isDone: false,
                ),
                const ReprtCard(
                  isDone: true,
                ),
                const ReprtCard(
                  isDone: false,
                ),
              ],
            ),
          ),
        ],
      );
    }

    PreferredSizeWidget? appBar() {
      return AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: kPrimaryColor.withOpacity(0.5),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 9,
                      ),
                      child: Image.asset(
                        'assets/icon_search.png',
                        width: 22,
                        height: 22,
                        color: const Color(0xffF1F1F1),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        style: whiteTextStyle.copyWith(
                          fontSize: 15,
                          color: const Color(0xffD8D8D8),
                        ),
                        decoration: InputDecoration.collapsed(
                          hintText: 'Search',
                          hintStyle: whiteTextStyle.copyWith(
                            fontSize: 15,
                            color: const Color(0xffD8D8D8),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 27,
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/notif-page');
                        },
                        child: Image.asset(
                          'assets/icon_bell.png',
                          width: 24,
                          height: 24,
                          color: const Color(0xffF2F2F2),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/chat-page');
                      },
                      child: Image.asset(
                        'assets/icon_chat.png',
                        width: 24,
                        height: 24,
                        color: const Color(0xffF2F2F2),
                      ),
                    ),
                  ],
                ),
                LineDivider(
                  top: 0,
                  bottom: 0,
                  right: 100,
                  color: kWhiteColor,
                )
              ],
            ),
          ),
        ),
      );
    }

    Widget customAppBar() {
      return Positioned(
        child: ClipRRect(
          borderRadius: BorderRadius.zero,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              height: 60,
              color: kPrimaryColor.withOpacity(0.5),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 9,
                        ),
                        child: Image.asset(
                          'assets/icon_search.png',
                          width: 22,
                          height: 22,
                          color: const Color(0xffF1F1F1),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          style: whiteTextStyle.copyWith(
                            fontSize: 15,
                            color: const Color(0xffD8D8D8),
                          ),
                          decoration: InputDecoration.collapsed(
                            hintText: 'Search',
                            hintStyle: whiteTextStyle.copyWith(
                              fontSize: 15,
                              color: const Color(0xffD8D8D8),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 27,
                        ),
                        child: CustomIconButton(
                          onTap: () =>
                              Navigator.pushNamed(context, '/notif-page'),
                          icon: 'assets/icon_bell.png',
                          size: defaultMargin,
                          color: const Color(0xffF2F2F2),
                        ),
                      ),
                      CustomIconButton(
                        onTap: () => Navigator.pushNamed(context, '/chat-page'),
                        icon: 'assets/icon_chat.png',
                        size: defaultMargin,
                        color: const Color(0xffF2F2F2),
                      ),
                    ],
                  ),
                  LineDivider(
                    top: 0,
                    bottom: 0,
                    right: 100,
                    color: kWhiteColor,
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      // resizeToAvoidBottomInset: false,
      // appBar: header(),
      body: SafeArea(
        child: Stack(
          children: [
            // Padding(
            //   padding: EdgeInsets.only(
            //       top: MediaQuery.of(context).size.height * 0.041),
            //   child: Image.asset('assets/image_beranda.png'),
            // ),
            Image.asset('assets/image_beranda.png'),
            body(),
            customAppBar(),
          ],
        ),
      ),
    );
  }
}
