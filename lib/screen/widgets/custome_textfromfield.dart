import 'package:flutter/material.dart';
import 'package:pubskuy/shared/theme.dart';

class CustomeTextFromField extends StatelessWidget {
  final String text;

  const CustomeTextFromField({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 53,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Align(
        alignment: Alignment.center,
        child: TextFormField(
          style: blackStyle.copyWith(fontSize: 14),
          decoration: InputDecoration(
            hintText: text,
            hintStyle: blackStyle.copyWith(),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
