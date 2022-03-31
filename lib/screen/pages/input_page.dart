import 'package:flutter/material.dart';
import 'package:pubskuy/shared/theme.dart';

class Inputpage extends StatefulWidget {
  const Inputpage({Key? key}) : super(key: key);

  @override
  State<Inputpage> createState() => _Inputpage();
}

class _Inputpage extends State<Inputpage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    Widget _header() {
      return SafeArea(
        child: Container(
          margin: const EdgeInsets.only(left: 20, top: 10, right: 20),
          width: width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hain, Adin',
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
              )
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
          _header()
        ],
      ),
    );
  }
}
