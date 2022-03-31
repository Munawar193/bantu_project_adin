import 'package:flutter/material.dart';
import 'package:pubskuy/screen/widgets/analisis_card.dart';
import 'package:pubskuy/screen/widgets/post_card.dart';
import 'package:pubskuy/screen/widgets/riwayat_card.dart';
import 'package:pubskuy/shared/theme.dart';

class MainMenuPage extends StatefulWidget {
  const MainMenuPage({Key? key}) : super(key: key);

  @override
  State<MainMenuPage> createState() => _MainMenuPageState();
}

class _MainMenuPageState extends State<MainMenuPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    Widget _hearder() {
      return SafeArea(
        child: Container(
          margin: const EdgeInsets.only(left: 20, top: 10, right: 20),
          width: width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hai, Adin',
                style: blackStyle.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 2,
                ),
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: kWhiteColor,
                child: Image.asset('assets/images/profile.png'),
              ),
            ],
          ),
        ),
      );
    }

    Widget _content() {
      return Container(
        margin: const EdgeInsets.only(),
        width: width,
        child: Column(
          children: [
            const PostCard(),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(left: 30, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AnalisiCard(
                    onTap: () {
                      Navigator.pushNamed(context, '/input-page',
                          arguments: (route) => false);
                    },
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  RiwayatCard(
                    onTap: () {
                      Navigator.pushNamed(context, '/riwayat-page',
                          arguments: (route) => false);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/asset1.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Column(
            children: [
              _hearder(),
              _content(),
            ],
          ),
        ],
      ),
    );
  }
}
