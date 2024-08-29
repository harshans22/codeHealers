import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';

var log = Logger();

class Utils {
  static pickImage(ImageSource source) async {
    final ImagePicker imagepicker = ImagePicker();
    XFile? file = await imagepicker.pickImage(source: source);
    if (file != null) {
      return await file.readAsBytes();
    }
  }

  static void fieldFocusChange(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
        
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMessage(String message, Color color) {
    //similar to snack bar
    Fluttertoast.showToast(
        msg: message,
        backgroundColor: color,
        fontSize: 15,
        timeInSecForIosWeb: 4);
  }

 

  static void flushbarErrorMessage(String message, BuildContext context) {
    //best UI
    showFlushbar(
      context: context,
      flushbar: Flushbar(
        backgroundColor: Colors.red,
        message: message,
        duration: const Duration(seconds: 2),
      )..show(context),
    );
  }

  static snackBar(String message, BuildContext context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }
}
