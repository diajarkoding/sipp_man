import 'package:flutter/material.dart';
import 'package:sipp_man/shared/theme.dart';
import 'package:sipp_man/ui/widget/banner_ads.dart';
import 'package:sipp_man/ui/widget/line_divider.dart';
import 'package:sipp_man/ui/widget/verif_form.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Padding(
        padding: EdgeInsets.only(
          top: defaultRadius,
          right: defaultMargin,
          left: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/image_verif.png',
              width: 65,
              height: 55,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Verifikasi OTP',
              style: primaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Silahkan masukan kode yang kami kirimkan melalui SMS ke no. 081234567890 pada kolom dibawah ini!',
              style: primaryTextStyle,
            ),
            const LineDivider(
              top: 23,
              bottom: 15,
              color: Color(0xffE2E9F1),
            )
          ],
        ),
      );
    }

    Widget body() {
      return Column(
        children: [
          Form(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                VerifForm(right: 5),
                VerifForm(right: 5),
                VerifForm(right: 5),
                VerifForm(right: 5),
                VerifForm(right: 5),
                VerifForm(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(defaultMargin, 15, defaultMargin, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '00 : 00',
                  style: primaryTextStyle.copyWith(
                    fontWeight: bold,
                  ),
                ),
                Text(
                  ' *Kirim Ulang Kode',
                  style: redTextStyle.copyWith(
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 70,
              right: defaultMargin,
              left: defaultMargin,
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
                'Konfirmasi',
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
      body: ListView(
        children: [
          header(),
          body(),
        ],
      ),
      bottomNavigationBar: const BannerAds(),
    );
  }
}
