

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_flutter_app/src/core/utils/utils.dart';
import 'package:my_first_flutter_app/src/data/repository/auth_repo.dart';
import 'package:my_first_flutter_app/src/modules/auth/login/login.dart';

import '../../../data/models/product_model.dart';
import '../../home/binding/home_binding.dart';
import '../../home/pages/home_screen.dart';

class AuthController extends GetxController{
  AuthRepo _authRepo =AuthRepo();
  RxBool passwordVisible =false.obs;
  RxBool validatePass =false.obs;
  RxBool validateId =false.obs;
  final userIDTextController = TextEditingController();
  final passwordIDTextController = TextEditingController();

  var message, ad_user_id, userid,employeeName, pass, orgName, designation;

  static const apiBaseUrl = 'http://172.16.9.186:4000/';

  List<ProductModel> allProduct = [];

  @override
  void onInit() {
    super.onInit();
    getInitialRoute();
  }





  login()async{
    try{

    }catch(e){

    }
  }
  registration()async{
    try{

    }catch(e){

    }
  }
  getUserInfo()async{
    userIDTextController.text == "" || userIDTextController.text.isEmpty
        ? validateId.value = true
        : validateId.value = false;
    passwordIDTextController.text == "" || passwordIDTextController.text.isEmpty
        ? validatePass.value = true
        : validatePass.value = false;
    if (!validatePass.value && !validateId.value) {
      try{
        Map<String,dynamic> userData=Map();
        userData["userid"]=userIDTextController.text;
        userData["password"]=passwordIDTextController.text;
        final response = await _authRepo.getUser(userData);
        if(!response){
          Utils.ErrorAlert();
          return;
        }
        if(response.isBlank){
          Utils.ShowToast("Something");
        }else{
          message = response['message'];
          ad_user_id = response['userdata'][0]['ad_user_id'];
          userid = response['userdata'][0]['userid'];
          employeeName = response['userdata'][0]['employeename'];
          orgName = response['userdata'][0]['orgname'];
          designation = response['userdata'][0]['designation'];
          pass = response['userdata'][0]['password'];
          if(message == "Got the user"){
            Get.to(() => HomeScreen(),binding: HomeBinding());
          }else{
            Utils.ShowToast("Something");
          }
        }
      }catch(e){

      }


    }

  }

  getInitialRoute(){
    startTime();
  }
  startTime() async {
    var _duration = new Duration(milliseconds: 1500);
    return new Timer(_duration, navigationPage);
  }
  void navigationPage() {
    Get.off(()=>LoginScreen());
  }
}