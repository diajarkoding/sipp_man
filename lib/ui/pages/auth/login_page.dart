import 'package:flutter/material.dart';
import 'package:sipp_man/shared/theme.dart';
import 'package:sipp_man/ui/widget/icon_ads.dart';
import 'package:sipp_man/ui/widget/line_divider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Padding(
        padding: EdgeInsets.only(top: defaultRadius, bottom: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/image_logo.png',
              height: 45,
              width: 160,
            ),
            Image.asset(
              'assets/icon_home.png',
              height: defaultMargin,
              width: defaultMargin,
            ),
          ],
        ),
      );
    }

    Widget banner() {
      return Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: secondaryMargin,
            ),
            child: Image.asset(
              'assets/image_login.png',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: secondaryMargin,
            ),
            child: Text(
              'Selamat datang di aplikasi SIPPMAN',
              style: primaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: bold,
              ),
            ),
          ),
          Text(
            'Aplikasi ini dapat digunakan apabila sekolah kamu sudah terdaftar di sippman.com',
            style: primaryTextStyle.copyWith(
              fontSize: 14,
              fontWeight: regular,
            ),
            textAlign: TextAlign.center,
          ),
          LineDivider(
            top: secondaryMargin,
            bottom: 15,
            color: const Color(0xffE2E9F1),
          )
        ],
      );
    }

    Widget fieldAndButton() {
      return Column(
        children: [
          // Text Form Field
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
            child: Center(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Image.asset(
                      'assets/icon_call.png',
                      width: defaultRadius,
                      height: defaultRadius,
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                      ),
                      decoration: InputDecoration.collapsed(
                        hintText: 'Masukan Nomor HPmu ',
                        hintStyle: whiteTextStyle.copyWith(
                          fontSize: 18,
                          color: const Color(0xffCCD7E4),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Button login
          Container(
            margin: const EdgeInsets.only(top: 15, bottom: 15),
            width: double.infinity,
            height: 50,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: kPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17),
                ),
              ),
              onPressed: () => Navigator.pushNamed(context, '/verification'),
              child: Text(
                'Masuk',
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

    Widget callService() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/image_cs.png',
            width: 175,
            height: 104,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icon_whatsapp.png',
                    width: defaultMargin,
                    height: defaultMargin,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    '081 2345 6789',
                    style: primaryTextStyle.copyWith(
                      fontSize: 10,
                      fontWeight: bold,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 11,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    'assets/icon_telegram.png',
                    width: 18,
                    height: 18,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    '081 2345 6789',
                    style: primaryTextStyle.copyWith(
                      fontSize: 10,
                      fontWeight: bold,
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      );
    }

    Widget bannerAds() {
      return Container(
        width: double.infinity,
        height: 60,
        color: kPrimaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: Text(
                    'Coba Aplikasi\nYang Lain Yuk!',
                    style: whiteTextStyle.copyWith(
                      fontWeight: bold,
                    ),
                  ),
                ),
                const IconAds(
                  image: 'assets/icon_bas.png',
                ),
                const IconAds(
                  image: 'assets/icon_bisa.png',
                ),
                const IconAds(
                  image: 'assets/icon_sipeka.png',
                ),
                const IconAds(
                  image: 'assets/icon_pusdig.png',
                ),
                const IconAds(
                  image: 'assets/icon_bas.png',
                ),
              ],
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(
                  Icons.close,
                  size: 15,
                  color: kWhiteColor,
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            header(),
            banner(),
            fieldAndButton(),
            callService(),
          ],
        ),
      ),
      bottomNavigationBar: bannerAds(),
    );
  }
}
