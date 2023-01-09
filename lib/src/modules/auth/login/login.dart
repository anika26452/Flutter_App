import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_flutter_app/src/modules/auth/controller/auth_controller.dart';

import '../../../core/values/app_images.dart';
import '../../../core/values/colors.dart';

class LoginScreen extends GetView<AuthController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: Get.width/12),
            child: Column(children: [
              SizedBox(height:50,),
              Container(
                width: Get.width/2.5,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.all(Radius.circular(Get.width/2)),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(Get.width/2)),
                    child: Image.asset(AppImages.logo2)),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: controller.userIDTextController,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: 'Enter Username/UserID',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    errorText: controller.validateId.value ? "Please enter user id" : null),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: controller.passwordIDTextController,
                obscureText: !controller.passwordVisible.value,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.key),
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: 'Enter Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    errorText:
                        controller.validatePass.value ? "Please enter your passsword" : null,
                    suffixIcon: IconButton(
                      icon: Icon(
                        controller.passwordVisible.value
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Theme.of(context).primaryColorDark,
                      ),
                      onPressed: () {

                        controller.passwordVisible.value = !controller.passwordVisible.value;

                      },
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 27,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  CircleAvatar(
                    radius: 20,
                    //backgroundColor: Color(0xff4c505b),
                    backgroundColor: Colors.blue,
                    child: IconButton(
                      color: Colors.white,
                      onPressed: () {
                        controller.getUserInfo();
                      },
                      icon: Icon(Icons.arrow_forward),
                    ),
                  )
                ],
              )
            ]),
          ),
        ));
  }
}