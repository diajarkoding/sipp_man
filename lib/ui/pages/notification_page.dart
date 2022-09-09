import 'package:flutter/material.dart';
import 'package:sipp_man/ui/widget/banner_ads.dart';
import 'package:sipp_man/ui/widget/custom_icon_button.dart';
import 'package:sipp_man/ui/widget/notification_card.dart';

import '../../shared/theme.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

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
            child: CustomIconButton(
              onTap: () => Navigator.pop(context),
              icon: 'assets/icon_arrow_left.png',
              size: defaultMargin,
            ),
          )
        ],
        title: Text(
          'Notification',
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: bold,
          ),
        ),
      );
    }

    Widget newNotif() {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'New',
                style: blackTextStyle.copyWith(fontWeight: bold),
              ),
              Text(
                'Mark all as read',
                style: primaryTextStyle.copyWith(fontSize: 12),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const NotificationCard(
              text: 'Selesaikan laporan anda!', isAcc: false, time: '1m'),
          const NotificationCard(
              text: 'Laporan anda sudah di acc.', isAcc: true, time: '1m'),
        ],
      );
    }

    Widget earlierNotif() {
      return Column(
        children: [
          Row(
            children: [
              Text(
                'Erlier',
                style: blackTextStyle.copyWith(fontWeight: bold),
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                'assets/icon_arrow_triangle_bottom.png',
                width: 24,
                height: 24,
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            margin: EdgeInsets.only(bottom: defaultRadius),
            padding: const EdgeInsets.only(left: 10, right: 18),
            width: double.infinity,
            height: 70,
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
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.asset('assets/image_profile.png'),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Tyara Sizedbox',
                      style: blackTextStyle.copyWith(fontWeight: bold),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Laporan anda sudah di acc.',
                      style: blackTextStyle.copyWith(fontSize: 12),
                    )
                  ],
                ),
                const Spacer(),
                Text(
                  '1m',
                  style: blackTextStyle,
                )
              ],
            ),
          ),
        ],
      );
    }

    Widget thisWeekNotif() {
      return Column(
        children: [
          Row(
            children: [
              Text(
                'This Week',
                style: blackTextStyle.copyWith(fontWeight: bold),
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                'assets/icon_arrow_triangle_top.png',
                width: 24,
                height: 24,
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const NotificationCard(
              text: 'Selesaikan laporan anda!', isAcc: false, time: '1d'),
          const NotificationCard(
              text: 'Laporan anda sudah di acc.', isAcc: true, time: '1d'),
          const NotificationCard(
              text: 'Laporan anda sudah di acc.', isAcc: true, time: '1d'),
        ],
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: appBar(),
      body: ListView(
        padding: EdgeInsetsDirectional.all(defaultMargin),
        children: [
          newNotif(),
          earlierNotif(),
          thisWeekNotif(),
        ],
      ),
      bottomNavigationBar: const BannerAds(),
    );
  }
}
