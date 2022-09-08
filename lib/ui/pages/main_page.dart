import 'package:flutter/material.dart';
import 'package:sipp_man/shared/theme.dart';
import 'package:sipp_man/ui/pages/home_page.dart';
import 'package:sipp_man/ui/pages/news/news_page.dart';
import 'package:sipp_man/ui/pages/profile_page.dart';
import 'package:sipp_man/ui/widget/banner_ads.dart';
import 'package:sipp_man/ui/widget/custom_bottom_nav_item.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      switch (currentIndex) {
        case 0:
          return const NewsPage();

        case 1:
          return const HomePage();

        case 2:
          return const ProfilePage();

        default:
          return const HomePage();
      }
    }

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomBottomNavItem(
                icon: 'assets/icon_media.png',
                name: 'Berita',
                color: currentIndex == 0 ? kLightBlueColor : kTransparentColor,
                onTap: () {
                  setState(
                    () {
                      currentIndex = 0;
                    },
                  );
                },
              ),
              CustomBottomNavItem(
                icon: 'assets/icon_home_2.png',
                name: 'Beranda',
                color: currentIndex == 1 ? kLightBlueColor : kTransparentColor,
                onTap: () {
                  setState(
                    () {
                      currentIndex = 1;
                    },
                  );
                },
              ),
              CustomBottomNavItem(
                icon: 'assets/icon_user.png',
                name: 'Profile',
                color: currentIndex == 2 ? kLightBlueColor : kTransparentColor,
                onTap: () {
                  setState(
                    () {
                      currentIndex = 2;
                    },
                  );
                },
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          buildContent(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              customBottomNavigation(),
              currentIndex == 0 ? const BannerAds() : const SizedBox()
            ],
          ),
        ],
      ),
    );
  }
}
