
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:my_first_flutter_app/src/core/values/app_images.dart';
import 'package:my_first_flutter_app/src/core/values/app_strings.dart';
import 'package:my_first_flutter_app/src/core/values/colors.dart';

import 'auth/controller/auth_controller.dart';

class SplashScreen extends GetView<AuthController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: Get.width/2.5,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.all(Radius.circular(Get.width/2)),
            boxShadow: [
             BoxShadow(
                color: AppColor.black.withOpacity(0.2),
                blurRadius: 12,
                offset: Offset(0.0,0.0), // Shadow position
              )
            ],
          ),
          child: Image.asset(AppImages.logo),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          width: Get.width/1.5,
          child: Text(
            "${AppStrings.welcomeText}",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromARGB(255, 32, 69, 133),
                fontSize: 22,
                fontWeight: FontWeight.bold),maxLines: 3,
          ),
        ),
      ],
        ),
      ),
    );
  }
}