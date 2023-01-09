


import 'package:get/get.dart';
import '../controller/home_controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(HomeController(), permanent: true);
    Get.lazyPut<HomeController>(() => HomeController());
  }

}