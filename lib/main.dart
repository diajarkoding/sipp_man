import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sipp_man/ui/pages/auth/login_page.dart';
import 'package:sipp_man/ui/pages/auth/verifiication_page.dart';
import 'package:sipp_man/ui/pages/home_page.dart';
import 'package:sipp_man/ui/pages/main_page.dart';
import 'package:sipp_man/ui/pages/news/detail_news.dart';
import 'package:sipp_man/ui/pages/notification_page.dart';
import 'package:sipp_man/ui/pages/onboarding/onboarding_guru.dart';
import 'package:sipp_man/ui/pages/onboarding/onboarding_ortu.dart';
import 'package:sipp_man/ui/pages/report/report_page.dart';
import 'package:sipp_man/ui/pages/report/take_image_page.dart';
import 'package:sipp_man/ui/pages/report/take_time_page.dart';
import 'package:sipp_man/ui/pages/splash_screen.dart';

import 'ui/pages/chat/chat_page.dart';
import 'ui/pages/chat/detail_chat.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xff0E4C89),
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': ((context) => const SplashScreen()),
        '/onboard-ortu': ((context) => const OnboardingOrtu()),
        '/onboard-guru': ((context) => const OnboardingGuru()),
        '/login': ((context) => const LoginPage()),
        '/verification': ((context) => const VerificationPage()),
        '/main-page': ((context) => const MainPage()),
        '/home-page': ((context) => const HomePage()),
        '/report-page': ((context) => const ReportPage(
              isAddImage: false,
              isAddDate: false,
            )),
        '/chat-page': ((context) => const ChatPage()),
        '/detail-chat': ((context) => const DetailChat()),
        '/notif-page': ((context) => const NotificationPage()),
        '/detail-news': ((context) => const DetailNews()),
        '/take-image': ((context) => const TakeImagePage()),
        '/take-time': ((context) => const TakeTimePage()),
      },
    );
  }
}
