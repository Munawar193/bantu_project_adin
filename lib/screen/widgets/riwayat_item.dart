import 'package:flutter/material.dart';
import 'package:pubskuy/shared/theme.dart';

class RiwayatItem extends StatelessWidget {
  const RiwayatItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: const EdgeInsets.only(top: 15, left: 20, right: 20),
      height: 90,
      decoration: BoxDecoration(
        color: kCreamColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Senin, 25 Januari 2022',
                style: blackStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '08:00',
                style: blackStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Level Daun adalah 2, pupuk yang diberikan sebanyak 7kg untuk lahan 300m2',
            style: blackStyle.copyWith(
              fontWeight: FontWeight.w300,
            ),
          )
        ],
      ),
    );
  }
}
