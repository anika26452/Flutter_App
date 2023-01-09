import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:my_first_flutter_app/src/modules/splash_screen.dart';
import 'package:get/get.dart';

import 'src/modules/auth/controller/auth_controller.dart';
import 'src/route/app_pages.dart';

initServices() async {
  Get.log('starting services ...');
  await GetStorage.init();
  Get.put(AuthController(),permanent: true,);
  Get.log('All services started...');
}
void main() async{
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(
      GetMaterialApp(
        home:  SplashScreen(),
        debugShowCheckedModeBanner: false,
        getPages: AppPages.routes,
      ));
}
