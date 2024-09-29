import 'dart:convert';

import 'package:http/http.dart' as http;

class PostMethods {
  Future<http.Response> fetchReportDetails(Map<String, dynamic> body) async {
    try {
      final response = await http.post(
        Uri.parse(
            'https://diseaseprediction-osbp.onrender.com/heart/predictHeart/'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(body),
      );
      return response;
    } catch (e) {
      throw Exception(e);
    }
  }
}
