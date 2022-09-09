import 'package:flutter/material.dart';
import 'package:sipp_man/shared/theme.dart';
import 'package:sipp_man/ui/widget/banner_ads.dart';
import 'package:sipp_man/ui/widget/line_divider.dart';

import '../../widget/custom_icon_button.dart';

class DetailNews extends StatelessWidget {
  const DetailNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return ListView(
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(
              top: 315,
            ),
            padding: EdgeInsets.symmetric(
              vertical: 13,
              horizontal: defaultRadius,
            ),
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(defaultRadius),
                topRight: Radius.circular(defaultRadius),
              ),
            ),
            child: Column(
              children: [
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
                        color: const Color(0xffA4A4A4),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Wagub Jatim Fasilitasi Generasi Muda Agar Terus Berinovasi',
                  style: primaryTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/image_profile_news.png',
                      width: 50,
                      height: 50,
                    ),
                    const SizedBox(
                      width: 17,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ahmad Musadeq',
                          style: greyTextStyle.copyWith(
                            fontWeight: bold,
                            color: const Color(0xff565656),
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Admin Sekolah',
                          style: greyTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 12,
                            color: const Color(0xff565656),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Image.asset(
                      'assets/icon_share.png',
                      width: defaultMargin,
                      height: defaultMargin,
                    )
                  ],
                ),
                LineDivider(
                  top: 15,
                  bottom: 18,
                  color: kPrimaryColor.withOpacity(0.5),
                ),
                Text(
                  'Surabaya Guna mednukung para generasi muda daerah di Jatim, Wakil Gubernur Jawa Timur Emil Elestianto Dardak memfasilitasi mereka lewatr program kepemudaan maupun peluang usaha di Jatim.\n\n "Saya Hadir disini ingin mendengar aspirasi rekan-rekan pemuda di daerah yang tetap memilih tinggal dan berkarya di daerahnya. Baik, mereka yang memilih untuk terlibat di dunia enterpreneur, freelancer, video grafis maupun pebsinis milenial yang merupakanpeluang yang bisa dikembangkan di masing-masing daerahnya tanpa harus dating ke kota-kota bersar", ujar wagub Emil Dardak saat membuka diskusi dan belajar Bersama Gerakan Millennial Cemerlang ( GEMILANG ) di Hotel Amaris MArgorejo, Surabaya, Sabtu ( 13/2).',
                  style: blackTextStyle.copyWith(
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
        ],
      );
    }

    Widget iconFavorite() {
      return Padding(
        padding: EdgeInsets.only(top: 310, right: defaultRadius),
        child: Align(
          alignment: Alignment.topRight,
          child: Image.asset(
            'assets/icon_favorite.png',
            width: 70,
            height: 70,
          ),
        ),
      );
    }

    Widget iconBack() {
      return Padding(
        padding: EdgeInsets.only(top: 45, left: defaultRadius),
        child: CustomIconButton(
          onTap: () => Navigator.pop(context),
          icon: 'assets/icon_arrow_short_right.png',
          size: 30,
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/image_news.png',
            fit: BoxFit.cover,
          ),
          content(),
          iconFavorite(),
          iconBack()
        ],
      ),
      bottomNavigationBar: const BannerAds(),
    );
  }
}
