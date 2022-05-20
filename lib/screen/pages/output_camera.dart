import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pubskuy/model/proses_model.dart';
import 'package:pubskuy/screen/widgets/custome_button.dart';
import 'package:pubskuy/service/proses_service.dart';
import 'package:pubskuy/shared/theme.dart';
import 'package:http/http.dart' as http;

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  final ProsesAPI _prosesAPI = ProsesAPI();
  ProsesModel? data;

  final String url =
      'https://2980-2001-448a-11ab-16f0-5cd9-2b53-82d1-1611.ap.ngrok.io';

  Future<void> _getData() async {
    data = await _prosesAPI.getProses(url);
  }

  File? _selectedImage;

  Future<http.Response> getCoordinate(File file, String link) async {
    try {
      String filename = file.path.split('/').last;
      var request = http.MultipartRequest(
        'POST',
        Uri.parse(link),
      );
      Map<String, String> headers = {"Content-type": "multipart/form-data"};
      request.files.add(
        http.MultipartFile(
          'image',
          file.readAsBytes().asStream(),
          file.lengthSync(),
          filename: filename,
        ),
      );
      request.headers.addAll(headers);
      var res = await request.send();
      var response = await http.Response.fromStream(res);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _addImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image != null) {
        _selectedImage = File(image.path);
      }
      setState(() {
        onUploadImage();
      });
    } catch (e) {
      rethrow;
    }
  }

  onUploadImage() async {
    try {
      final res = await getCoordinate(
        File(_selectedImage!.path),
        "$url/upload",
      );
      debugPrint(res.body);

      setState(() {});
    } catch (e) {
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
          _selectedImage != null
              ? Container(
                  height: 520,
                  width: MediaQuery.of(context).size.width,
                  color: kWhiteColor.withOpacity(0.2),
                  child: Image.file(
                    _selectedImage!,
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
                  FutureBuilder(
                    future: _getData(),
                    builder: (BuildContext context,
                        AsyncSnapshot<dynamic> snapshot) {
                      if (snapshot.hasData) {
                        return const CircularProgressIndicator();
                      } else {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InformasiCard(
                                  imgUrl: 'assets/images/luas_lahan.png',
                                  title: 'Luas lahan',
                                  subtitle:
                                      _selectedImage != null ? '400 m2' : '',
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                InformasiCard(
                                  imgUrl: 'assets/images/dosis.png',
                                  title: 'Dosis pupuk',
                                  subtitle: "${data?.dosis}",
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InformasiCard(
                                  imgUrl: 'assets/images/level.png',
                                  title: 'Level',
                                  subtitle: data?.pesan?.levelDaun,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                InformasiCard(
                                  imgUrl: 'assets/images/sample.png',
                                  title: 'Sample',
                                  subtitle: data?.pesan?.levelAngka,
                                ),
                              ],
                            ),
                          ],
                        );
                      }
                    },
                  ),
                  const Spacer(),
                  CustomeButton(
                    title: 'Ambil gambar',
                    onPressed: () {
                      _addImage();
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
  final String? subtitle;
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
              subtitle.toString(),
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
