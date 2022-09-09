import 'package:flutter/material.dart';
import 'package:sipp_man/shared/theme.dart';
import 'package:sipp_man/ui/widget/custom_icon_button.dart';

class OnboardingOrtu extends StatelessWidget {
  const OnboardingOrtu({Key? key}) : super(key: key);

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
                    'assets/image_onboarding1.png',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(
                  right: defaultRadius,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: defaultRadius,
                    ),
                    Text(
                      'Orang Tua Di Rumah',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Bisa mengetahui kegiatan prakerin siswa\ndapat dilihat secara real time\nmelalui smartphone',
                      style: primaryTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.end,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomIconButton(
                      onTap: () =>
                          Navigator.pushNamed(context, '/onboard-guru'),
                      icon: 'assets/icon_arrow.png',
                      size: 50,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
