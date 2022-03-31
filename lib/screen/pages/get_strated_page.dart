import 'package:flutter/material.dart';
import 'package:pubskuy/screen/widgets/custome_button.dart';
import 'package:pubskuy/shared/theme.dart';

class GetStartedpage extends StatelessWidget {
  const GetStartedpage({Key? key}) : super(key: key);

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
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Puk’s\nKuy!',
                    style: whiteStyle.copyWith(
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 325,
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: kPrimeColor.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        'Ini merupakan aplikasi untuk menentukan dosis pemberian pupuk pada tanaman padi secara real-time',
                        style: whiteStyle.copyWith(
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  CustomeButton(
                    title: 'Mulai',
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
