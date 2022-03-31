import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pubskuy/screen/widgets/custome_button.dart';
import 'package:pubskuy/shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                    bottom: 20,
                  ),
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
                        height: 50,
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
                                labelStyle: whiteStyle.copyWith(),
                                labelText: 'Username',
                                hintStyle: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  color: kWhiteColor,
                                ),
                              ),
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
                                labelStyle: whiteStyle.copyWith(),
                                labelText: 'Email',
                                hintStyle: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  color: kWhiteColor,
                                ),
                              ),
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
                              title: 'SIGN UP',
                              onPressed: () {
                                Navigator.pushNamed(context, '/main-menu');
                              },
                            ),
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
