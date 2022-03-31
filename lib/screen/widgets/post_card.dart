import 'package:flutter/material.dart';
import 'package:pubskuy/shared/theme.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, top: 10),
      padding: const EdgeInsets.only(
        left: 30,
        right: 10,
        top: 20,
      ),
      height: 320,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: kDarkColor,
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Puk’s\nKuy!',
                style: whiteStyle.copyWith(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: 150,
                width: 150,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/icon.png'),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            'Puk’s Kuy! adalah aplikasi penentuan dosis pupuk yang akan di tentukan secara akurat dan sesuai dengan kebutuhan padi Anda.',
            style: whiteStyle.copyWith(
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
