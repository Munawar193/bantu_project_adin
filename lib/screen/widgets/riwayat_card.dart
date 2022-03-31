import 'package:flutter/material.dart';
import 'package:pubskuy/shared/theme.dart';

class RiwayatCard extends StatelessWidget {
  final Function() onTap;
  const RiwayatCard({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
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
                'assets/images/history.png',
                width: 100,
              ),
              Text(
                'Riwayat',
                style: whiteStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'Ini merupakan fitur untuk melihat hasil analisis',
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
