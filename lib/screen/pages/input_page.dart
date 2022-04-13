import 'package:flutter/material.dart';
import 'package:pubskuy/screen/pages/output_camera.dart';
import 'package:pubskuy/screen/widgets/custome_button.dart';
import 'package:pubskuy/screen/widgets/custome_textfromfield.dart';
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
      return Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 30),
          height: 400,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: kDarkColor,
            borderRadius: BorderRadius.circular(35),
          ),
          child: Column(
            children: [
              Text(
                'Data daun padi',
                style: whiteStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomeTextFromField(
                text: 'Tanggal',
              ),
              const CustomeTextFromField(
                text: 'Luas lahan',
              ),
              const CustomeTextFromField(
                text: 'Note',
              ),
              const SizedBox(
                height: 30,
              ),
              CustomeButton(
                title: 'save input',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Gallery()));
                },
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
          _header(),
          _content(),
        ],
      ),
    );
  }
}
