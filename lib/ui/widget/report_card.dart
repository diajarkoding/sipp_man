import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class ReprtCard extends StatelessWidget {
  final bool isDone;
  const ReprtCard({Key? key, required this.isDone}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
              width: 90,
              height: 110,
              child: Image.asset('assets/image_laporan.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    'Install Ulang Laptop',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                      color: kGreyColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                  child: Text(
                    'Senin 7 Agustus 2021\n15.00 PM - 17.00 PM',
                    style: greyTextStyle.copyWith(
                      fontSize: 10,
                      color: kGreyColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 11),
                  child: Text(
                    'Saya dikasih PR untuk install\nulang laptop sekian unit ....',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                      color: kGreyColor,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 80,
                      height: 20,
                      decoration: BoxDecoration(
                        color: isDone ? const Color(0xffF3F3F3) : kRedColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Belum Selesai',
                          style: whiteTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: bold,
                              color: isDone
                                  ? const Color(0xffCDCDCD)
                                  : kWhiteColor),
                        ),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 20,
                      decoration: BoxDecoration(
                        color: isDone ? kGreenColor : const Color(0xffF3F3F3),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          isDone ? 'Selesai' : 'Selesaikan',
                          style: whiteTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: bold,
                            color:
                                isDone ? kWhiteColor : const Color(0xffCDCDCD),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          isDone
              ? const SizedBox()
              : Padding(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: Image.asset(
                    'assets/icon_arrow_circle.png',
                    width: 20,
                    height: 20,
                  ),
                ),
        ],
      ),
    );
  }
}
