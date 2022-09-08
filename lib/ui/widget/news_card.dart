import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, '/detail-news'),
      child: Padding(
        padding: EdgeInsets.only(
          bottom: defaultRadius,
        ),
        child: Row(
          children: [
            Container(
              width: 88,
              height: 88,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
                image:
                    DecorationImage(image: AssetImage('assets/image_news.png')),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 10, right: 12),
                width: double.infinity,
                height: 88,
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(defaultRadius),
                    bottomRight: Radius.circular(defaultRadius),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Wagub Jatim Fasilitasi Generasi Muda Agar Terus Berinovasi',
                            style: primaryTextStyle.copyWith(
                                fontSize: 12, fontWeight: bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/icon_calendar_chek.png',
                                width: 15,
                                height: 15,
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                '15 Agustus 2021',
                                style: greyTextStyle.copyWith(
                                    fontSize: 10,
                                    fontWeight: bold,
                                    color: const Color(0xffA4A4A4)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/icon_arrow_circle_chevron.png',
                      width: defaultRadius,
                      height: defaultRadius,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
