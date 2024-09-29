import 'dart:convert';

import 'package:code_healers_sih/data/post_methods.dart';
import 'package:code_healers_sih/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

class TestDataProvider with ChangeNotifier {
  var logger = Logger();

  List<TextEditingController> basicMatrix = List.generate(
      Appconstants.basicHealthMetrics.length,
      (index) => TextEditingController());
  List<TextEditingController> detailedMatrix = List.generate(
      Appconstants.exerciseCardiacMetrics.length,
      (index) => TextEditingController());
  TextEditingController ageController = TextEditingController();
  TextEditingController sexController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  bool loader = false;

  setloader(bool value) {
    loader = value;
    notifyListeners();
  }

  Map<String, dynamic> reportData = {};

  Future<void> submitData() async {
    setloader(true);
    try {
      Map<String, dynamic> body = {};
      for (int i = 0; i < basicMatrix.length; i++) {
        body[Appconstants.basicHealthMetrics[i]['key']!] =
            int.parse(basicMatrix[i].text.toString());
      }
      for (int i = 0; i < detailedMatrix.length; i++) {
        body[Appconstants.exerciseCardiacMetrics[i]['key']!] =
            int.parse(detailedMatrix[i].text.toString());
      }
      body["age"] = int.parse(ageController.text.toString());
      body["sex"] = ageController.text.toString()=="Male"?1:0;
      logger.i(body);
      http.Response response = await PostMethods().fetchReportDetails(body);
      if (response.statusCode == 200) {
        reportData = jsonDecode(response.body) as Map<String, dynamic>;
      } else {
        logger.e(response.statusCode);
      }
    } catch (e) {
      logger.e(e.toString());
      throw Exception(e.toString());
    }
    setloader(false);
  }


  Future<void> delayloader()async{
    setloader(true);
    await Future.delayed(const Duration(seconds: 10),(){
      setloader(false);
    });
  }
}
