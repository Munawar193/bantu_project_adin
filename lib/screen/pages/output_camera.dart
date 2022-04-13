import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pubskuy/screen/widgets/custome_button.dart';
import 'package:pubskuy/shared/theme.dart';

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) {
        return;
      }

      final imageTemprorary = File(image.path);
      setState(() {
        this.image = imageTemprorary;
      });
    } on PlatformException {
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkColor,
      body: SafeArea(
          child: Stack(
        children: [
          image != null
              ? Container(
                  height: 520,
                  width: MediaQuery.of(context).size.width,
                  color: kWhiteColor.withOpacity(0.2),
                  child: Image.file(
                    image!,
                    width: MediaQuery.of(context).size.width,
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.only(bottom: 400),
                  child: Center(
                    child: Text(
                      "Belum Ada Gambar",
                      style: whiteStyle.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 360,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              decoration: const BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'INFORMASI',
                    style: greenStyle.copyWith(
                      fontSize: 29,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    'Kamis, 02 Febuari 2022',
                    style: blackStyle.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InformasiCard(
                            imgUrl: 'assets/images/luas_lahan.png',
                            title: 'Luas lahan',
                            subtitle: image != null ? '400 m2' : '',
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          InformasiCard(
                            imgUrl: 'assets/images/dosis.png',
                            title: 'Dosis pupuk',
                            subtitle: image != null ? '7 kg' : '',
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InformasiCard(
                            imgUrl: 'assets/images/level.png',
                            title: 'Level',
                            subtitle: image != null ? '1' : '',
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          InformasiCard(
                            imgUrl: 'assets/images/sample.png',
                            title: 'Sample',
                            subtitle: image != null ? '1' : '',
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  CustomeButton(
                    title: 'Ambil gambar',
                    onPressed: () {
                      pickImage();
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class InformasiCard extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String subtitle;
  const InformasiCard({
    Key? key,
    required this.imgUrl,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imgUrl,
          width: 60,
        ),
        const SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: greenStyle.copyWith(),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              subtitle,
              style: blackStyle.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        )
      ],
    );
  }
}
