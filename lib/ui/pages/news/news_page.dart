import 'package:flutter/material.dart';
import 'package:sipp_man/ui/widget/news_card.dart';
import '../../../shared/theme.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

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
              'assets/icon_grid.png',
              width: 30,
              height: 30,
            ),
          )
        ],
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                width: 40,
                height: 40,
                child: Image.asset('assets/image_profile.png'),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              'Hi, Tyara',
              style: whiteTextStyle.copyWith(
                fontSize: 18,
                fontWeight: bold,
              ),
            ),
          ],
        ),
      );
    }

    Widget newsList() {
      return Padding(
        padding: EdgeInsets.fromLTRB(
          defaultMargin,
          defaultMargin,
          defaultMargin,
          defaultRadius,
        ),
        child: Column(
          children: [
            const NewsCard(),
            const NewsCard(),
            const NewsCard(),
            Text(
              'Lihat Semua',
              style: primaryTextStyle.copyWith(
                fontSize: 12,
                color: const Color(0xff523EDA),
                decoration: TextDecoration.underline,
              ),
            )
          ],
        ),
      );
    }

    Widget newsVideo() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: defaultMargin,
            ),
            child: Text(
              'Kisah Klasik',
              style: primaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: bold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/image_news_2.png',
                        width: 150,
                        height: 250,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 100,
                          top: 20,
                        ),
                        child: Text(
                          '30.00',
                          style: whiteTextStyle.copyWith(
                            fontSize: 11,
                            fontWeight: bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Image.asset(
                      'assets/image_news_3.png',
                      width: 150,
                      height: 250,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 100,
                        top: 20,
                      ),
                      child: Text(
                        '30.00',
                        style: whiteTextStyle.copyWith(
                          fontSize: 11,
                          fontWeight: bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Image.asset(
                      'assets/image_news_3.png',
                      width: 150,
                      height: 250,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 100,
                        top: 20,
                      ),
                      child: Text(
                        '30.00',
                        style: whiteTextStyle.copyWith(
                          fontSize: 11,
                          fontWeight: bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: appBar(),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: defaultMargin),
        children: [
          Center(
            child: Text(
              '“Segarkan Harimu dengan berita\nyang baik bagimu”',
              style: primaryTextStyle.copyWith(
                fontWeight: medium,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          newsList(),
          newsVideo(),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
