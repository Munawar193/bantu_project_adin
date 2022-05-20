import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pubskuy/model/proses_model.dart';

class ProsesAPI {
  Future getProses(String? getUrl) async {
    try {
      var endpoint = Uri.parse('$getUrl/analisis');
      var respone = await http.get(endpoint);
      var body = jsonDecode(respone.body);
      print(respone.body);
      return ProsesModel.fromJson(body);
    } catch (e) {
      e.toString();
    }
  }
}
