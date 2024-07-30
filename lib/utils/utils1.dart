import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils1 {
  void fluttertoast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: const Color.fromARGB(255, 58, 58, 58),
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
