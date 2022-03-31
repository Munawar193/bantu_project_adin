import 'package:flutter/material.dart';
import 'package:pubskuy/screen/pages/get_strated_page.dart';
import 'package:pubskuy/screen/pages/input_page.dart';
import 'package:pubskuy/screen/pages/login_page.dart';
import 'package:pubskuy/screen/pages/main_menu_page.dart';
import 'package:pubskuy/screen/pages/riwayat_page.dart';
import 'package:pubskuy/screen/pages/singUp_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const GetStartedpage(),
        '/login': (context) => const LoginPage(),
        '/singUp-page': (context) => const SignUpPage(),
        '/main-menu': (context) => const MainMenuPage(),
        '/input-page': (context) => const Inputpage(),
        '/riwayat-page': (context) => const RiwayatPage(),
      },
    );
  }
}
