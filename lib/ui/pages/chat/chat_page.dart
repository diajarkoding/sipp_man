import 'package:flutter/material.dart';
import 'package:sipp_man/ui/widget/banner_ads.dart';
import 'package:sipp_man/ui/widget/chat_tile.dart';

import '../../../shared/theme.dart';
import '../../widget/custom_icon_button.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

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
          'Chat',
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: bold,
          ),
        ),
      );
    }

    Widget searchChatContac() {
      return Padding(
        padding:
            EdgeInsets.fromLTRB(defaultMargin, defaultRadius, 0, defaultMargin),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 9,
              ),
              child: Image.asset(
                'assets/icon_search.png',
                width: 22,
                height: 22,
                color: kPrimaryColor,
              ),
            ),
            Expanded(
              child: TextField(
                style: primaryTextStyle.copyWith(
                  fontSize: 15,
                ),
                decoration: InputDecoration.collapsed(
                  hintText: 'Cari Chat / Kontak',
                  hintStyle: primaryTextStyle.copyWith(
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: appBar(),
      body: ListView(
        children: [
          searchChatContac(),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
                horizontal: defaultMargin, vertical: defaultRadius),
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(children: const [
              ChatTile(
                image: 'assets/image_profile_1.png',
                name: 'Bapak Pembimbing',
                message: 'Apakah tugas saya sudah selesai?',
                sent: false,
                active: true,
                seen: false,
              ),
              ChatTile(
                image: 'assets/image_profile_2.png',
                name: 'Bapak Pengawas',
                message: 'Kemarin jadi kesini pak?',
                sent: true,
                active: false,
                seen: false,
              ),
              ChatTile(
                image: 'assets/image_profile_3.png',
                name: 'Teman PKL',
                message: 'Kamu udah ngerjain tugas?',
                sent: false,
                active: false,
                seen: true,
              ),
              ChatTile(
                image: 'assets/image_profile_1.png',
                name: 'Bapak Pembimbing',
                message: 'Apakah tugas saya sudah selesai?',
                sent: false,
                active: true,
                seen: false,
              ),
              ChatTile(
                image: 'assets/image_profile_2.png',
                name: 'Bapak Pengawas',
                message: 'Kemarin jadi kesini pak?',
                sent: true,
                active: false,
                seen: false,
              ),
              ChatTile(
                image: 'assets/image_profile_3.png',
                name: 'Teman PKL',
                message: 'Kamu udah ngerjain tugas?',
                sent: false,
                active: false,
                seen: true,
              ),
            ]),
          )
        ],
      ),
      bottomNavigationBar: const BannerAds(),
    );
  }
}
