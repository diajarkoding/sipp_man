import 'package:flutter/material.dart';
import 'package:sipp_man/shared/theme.dart';

class ReportPage extends StatelessWidget {
  final bool isAddImage;
  final bool isAddDate;
  const ReportPage(
      {Key? key, required this.isAddImage, required this.isAddDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget? appBar() {
      return AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
            ),
            child: Image.asset(
              'assets/icon_arrow_left.png',
              width: 24,
              height: 24,
            ),
          )
        ],
        title: Text(
          'Buat Laporan',
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: bold,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: appBar(),
      body: ListView(
        padding: EdgeInsets.symmetric(
          vertical: defaultRadius,
          horizontal: defaultMargin,
        ),
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
                  padding: const EdgeInsets.only(left: 16),
                  height: 50,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  child: Center(
                    child: TextFormField(
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 15,
                        color: const Color(0xff4D4D4D),
                      ),
                      decoration: InputDecoration.collapsed(
                        hintText: 'Tulis Judul Laporan',
                        hintStyle: whiteTextStyle.copyWith(
                          fontSize: 15,
                          color: kPrimaryColor.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: defaultRadius),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
            child: TextFormField(
              maxLines: 3,
              style: blackTextStyle.copyWith(
                fontWeight: light,
                fontSize: 15,
                color: const Color(0xff4D4D4D),
              ),
              decoration: InputDecoration.collapsed(
                hintText: 'Tulis Detail Laporan',
                hintStyle: whiteTextStyle.copyWith(
                  fontSize: 15,
                  color: kPrimaryColor.withOpacity(0.5),
                ),
              ),
            ),
          ),
          // Condition Added image
          isAddImage
              ? Container(
                  width: double.infinity,
                  height: 355,
                  decoration: BoxDecoration(
                    color: const Color(0xffE8F0F8),
                    borderRadius: BorderRadius.circular(defaultRadius),
                    image: const DecorationImage(
                        image: AssetImage(
                          'assets/image_added.png',
                        ),
                        fit: BoxFit.cover),
                  ),
                )
              : Container(
                  width: double.infinity,
                  height: 355,
                  decoration: BoxDecoration(
                    color: const Color(0xffE8F0F8),
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 40,
                          bottom: defaultRadius,
                        ),
                        child: Text(
                          'Tambahkan Foto\nPekerjaan',
                          textAlign: TextAlign.center,
                          style: greyTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: bold,
                            color: const Color(0xffCDDDED),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                          ),
                          child: Image.asset(
                            'assets/image_add_image.png',
                            width: 240,
                            height: 248,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
          // Condition add Date
          isAddDate
              ? Container(
                  margin: EdgeInsets.symmetric(vertical: defaultRadius),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffE8F0F8),
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/icon_calendar_2.png',
                            width: 30,
                            height: 30,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Senin,\n7 Agustus 2021',
                            style: blackTextStyle.copyWith(
                              fontWeight: medium,
                              color: const Color(0xff4C4C4C),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/icon_calendar_2.png',
                            width: 30,
                            height: 30,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Senin,\n7 Agustus 2021',
                            style: blackTextStyle.copyWith(
                              fontWeight: medium,
                              color: const Color(0xff4C4C4C),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              : Container(
                  margin: EdgeInsets.symmetric(vertical: defaultRadius),
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xffE8F0F8),
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  child: Center(
                    child: Text(
                      'Tambahkan Tanggal Pekerjaan',
                      style: greyTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: bold,
                        color: const Color(0xffCDDDED),
                      ),
                    ),
                  ),
                ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '*Lengkapi\n Laporanmu',
                style: greyTextStyle.copyWith(
                  fontSize: 10,
                  fontWeight: medium,
                  color: isAddDate && isAddImage
                      ? const Color(0xffA6A6A6)
                      : isAddDate || isAddImage
                          ? kRedColor
                          : const Color(0xffA6A6A6),
                ),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/take-time');
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.symmetric(
                          vertical: 3, horizontal: 8),
                      decoration: BoxDecoration(
                          color: kWhiteColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/icon_calendar.png',
                            width: defaultRadius,
                            height: defaultRadius,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Waktu',
                            style: greyTextStyle.copyWith(
                              color: kLightGreyColor,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/take-image');
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.symmetric(
                          vertical: 3, horizontal: 8),
                      decoration: BoxDecoration(
                          color: kWhiteColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/icon_camera.png',
                            width: defaultRadius,
                            height: defaultRadius,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Foto',
                            style: greyTextStyle.copyWith(
                              color: kLightGreyColor,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icon_send.png',
                          width: defaultRadius,
                          height: defaultRadius,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          'Simpan',
                          style: whiteTextStyle.copyWith(
                            fontWeight: semiBold,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
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
      ),
    );
  }
}
