import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pubskuy/screen/widgets/custome_button.dart';

import '../../shared/theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/asset1.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          SafeArea(
            child: ListView(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Puk’s\nKuy!',
                        style: whiteStyle.copyWith(
                          fontSize: 55,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 140,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: kBlackColor.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.all(50),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                  fillColor: kWhiteColor,
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  hintText: 'contoh@gmail.com',
                                  labelStyle: whiteStyle.copyWith(),
                                  labelText: 'Email',
                                  // fontSize: 16,
                                  // color: kWhiteColor,
                                  hintStyle: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: kWhiteColor,
                                  )),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                fillColor: kWhiteColor,
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                hintText: 'kombinasi angka',
                                labelText: 'Password',
                                labelStyle: whiteStyle.copyWith(),
                                hintStyle: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  color: kWhiteColor,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                onTap: () {},
                                child: Text(
                                  ' Forgot Password ?',
                                  style: whiteStyle.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 48,
                            ),
                            CustomeButton(
                                title: 'SIGN IN',
                                onPressed: () {
                                  Navigator.pushNamedAndRemoveUntil(
                                      context, '/main-menu', (route) => false);
                                })
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
