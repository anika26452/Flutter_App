import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:my_first_flutter_app/model/product_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../navigationbartest.dart';

class SyncController extends GetxController{
  final valueuserid = TextEditingController();
  final valuepasswordid = TextEditingController();

  var message, ad_user_id, userid,employeename, pass, orgname, designation;

  static const apiBaseUrl = 'http://172.16.9.186:4000/';

  List<ProductModel> allProduct = [];

  Future<void> getuser(Map userdata) async{

    var userid = userdata['userid'];
    var pasword = userdata['password'];

    //var url = Uri.parse("${apiBaseUrl + 'users/'+userid}/"+pasword);
    var url = Uri.parse(apiBaseUrl + 'users/'+userid+"/"+pasword);

    print("=========================");
    print(apiBaseUrl + 'users/'+userid+"/"+pasword);

    Map<String,String> headers = {
      'Content-type' : 'application/json',
      'Accept': 'application/json',
    };

    try {
      final response = await http.get(url, headers: headers);
      print(response);

      if (response.statusCode == 200) {
        print(response.body);

        Map<String, dynamic> responseJson = json.decode(response.body);
        print(responseJson);
        print(responseJson['userdata'][0]['name']);
        message = responseJson['message'];
        ad_user_id = responseJson['userdata'][0]['ad_user_id'];
        userid = responseJson['userdata'][0]['userid'];
        employeename = responseJson['userdata'][0]['employeename'];
        orgname = responseJson['userdata'][0]['orgname'];
        designation = responseJson['userdata'][0]['designation'];
        pass = responseJson['userdata'][0]['password'];

        print(message);
        if(message == "Got the user"){
          Get.to(() => Navigat());
        }else{
          throw jsonDecode(response.body)["message"] ?? "Unknown Error Occured";
        }
      }else{
        throw jsonDecode(response.body)["message"] ?? "Unknown Error Occured";
      }
    } catch (error) {
      showDialog(
          context: Get.context!,
          builder: (context){
            return SimpleDialog(
              title: Text("Error"),
              contentPadding: EdgeInsets.all(20),
              children: [Text("Employee ID/Password doesn't match")],
            );
          });
      print(error);
    }
  }
}