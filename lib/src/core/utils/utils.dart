


import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class Utils{
  static ShowToast(Text) {
    Fluttertoast.showToast(
        msg: Text,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.blue, // Color(0xff4c505b),
        textColor: Colors.white,
        fontSize: 16.0);
  }


  static Future ErrorAlert(){
    return  showDialog(
        context: Get.context!,
        builder: (context){
          return SimpleDialog(
            title: Text("Error"),
            contentPadding: EdgeInsets.all(20),
            children: [Text("Employee ID/Password doesn't match")],
          );
        });
  }
}