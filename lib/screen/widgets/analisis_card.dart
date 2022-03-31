import 'package:flutter/material.dart';
import 'package:pubskuy/shared/theme.dart';

class AnalisiCard extends StatelessWidget {
  const AnalisiCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/input-page',
              arguments: (route) => false);
        },
        child: Container(
          height: 240,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: kDarkColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/analisis.png',
                width: 100,
              ),
              Text(
                'Analisis',
                style: whiteStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'Ini merupakan fitur analisis  untuk menentukan dosisi pupuk',
                style: whiteStyle.copyWith(
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
