import 'package:flutter/material.dart';
import 'package:sipp_man/ui/widget/chat_bubble.dart';

import '../../../shared/theme.dart';

class DetailChat extends StatelessWidget {
  const DetailChat({Key? key}) : super(key: key);

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
              'assets/icon_arrow_left.png',
              width: defaultMargin,
              height: defaultMargin,
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

    Widget inputMessage() {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: 70,
        color: kBackgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              width: MediaQuery.of(context).size.width * 0.7,
              height: 36,
              decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xff86829F))),
              child: Center(
                child: TextFormField(
                  style: blackTextStyle.copyWith(
                    fontSize: 17,
                  ),
                  decoration: InputDecoration.collapsed(
                    hintText: 'Write a comment',
                    hintStyle: greyTextStyle.copyWith(
                      fontSize: 17,
                      color: const Color(0xff86829F).withOpacity(0.5),
                    ),
                  ),
                ),
              ),
            ),
            Image.asset(
              'assets/icon_send_2.png',
              width: 36,
              height: 36,
            )
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: kWhiteColor,
        appBar: appBar(),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: defaultMargin, vertical: defaultRadius),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bapak Pembimbing',
                        style: blackTextStyle.copyWith(
                            fontSize: 20, fontWeight: bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '+62 898 7654 3210',
                        style: blackTextStyle.copyWith(
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/icon_phone.png',
                        width: 40,
                        height: 40,
                      ),
                      const SizedBox(
                        width: 13,
                      ),
                      Image.asset(
                        'assets/icon_film.png',
                        width: 40,
                        height: 40,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(
                  horizontal: defaultMargin, vertical: defaultRadius),
              width: double.infinity,
              decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(defaultRadius),
                  topRight: Radius.circular(defaultRadius),
                ),
              ),
              child: Column(
                children: const [
                  ChatBubble(
                      isSender: true,
                      text:
                          'Assalamualikum,\nSaya Tyara pak dari kelas 2A TKJ, saya sudah mengirimkan laporan pekerjaan kemarin. Apakah sudah diterima pak ?',
                      image: 'assets/image_profile.png'),
                  ChatBubble(
                      isSender: false,
                      text:
                          'Waalaikumsalam\nBaik tyara laporan kamu sudah saya terima.',
                      image: 'assets/image_profile_1.png'),
                  ChatBubble(
                      isSender: true,
                      text:
                          'Assalamualikum,\nSaya Tyara pak dari kelas 2A TKJ, saya sudah mengirimkan laporan pekerjaan kemarin. Apakah sudah diterima pak ?',
                      image: 'assets/image_profile.png'),
                  ChatBubble(
                      isSender: false,
                      text:
                          'Waalaikumsalam\nBaik tyara laporan kamu sudah saya terima.',
                      image: 'assets/image_profile_1.png'),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: inputMessage()
        // BottomNavigationBar(items: [
        //   const BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        //   const BottomNavigationBarItem(icon: Icon(Icons.home), label: '')
        // ]),
        );
  }
}
