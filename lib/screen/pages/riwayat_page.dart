import 'package:flutter/material.dart';
import 'package:pubskuy/screen/widgets/riwayat_item.dart';
import 'package:pubskuy/shared/theme.dart';

class RiwayatPage extends StatelessWidget {
  const RiwayatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _header() {
      return SafeArea(
        child: Container(
          margin: const EdgeInsets.only(left: 20, top: 10, right: 20),
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  'assets/images/back_icon.png',
                  width: 35,
                ),
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: kWhiteColor,
                child: Image.asset('assets/images/profile.png'),
              )
            ],
          ),
        ),
      );
    }

    Widget _content() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: const EdgeInsets.only(
            top: 220,
          ),
          padding: const EdgeInsets.only(
            top: 30,
          ),
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: kDarkColor,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Plant History',
                style: whiteStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: const [
                      RiwayatItem(),
                      RiwayatItem(),
                      RiwayatItem(),
                      RiwayatItem(),
                      RiwayatItem(),
                      RiwayatItem(),
                    ],
                  ),
                ),
              ),
            ],
          ),
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
          _header(),
          _content(),
        ],
      ),
    );
  }
}
