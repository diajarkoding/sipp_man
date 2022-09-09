import 'package:flutter/material.dart';
import 'package:sipp_man/shared/theme.dart';

import '../../widget/custom_icon_button.dart';

class OnboardingGuru extends StatelessWidget {
  const OnboardingGuru({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_onboarding2.png',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: defaultRadius,
                  ),
                  Text(
                    'Guru Di Sekolah',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Bisa mengetahui kegiatan prakerin siswa\ndapat dilihat secara real time\nkapanpun dan dimanapun',
                    style: primaryTextStyle.copyWith(
                      fontWeight: regular,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomIconButton(
                    onTap: () => Navigator.pushNamed(context, '/login'),
                    icon: 'assets/icon_arrow.png',
                    size: 50,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
