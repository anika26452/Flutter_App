

import 'package:get/get.dart';
import 'package:my_first_flutter_app/src/data/repository/sync_data_repo.dart';

import '../../../data/models/contact_model.dart';

class HomeController extends GetxController{
  SyncDataRepo _syncDataRepo =SyncDataRepo();
  RxList<ContactModel> contacts = <ContactModel>[].obs;
  //logic in the UI will be controller.contacts.isEmpty?CircularProgressIndicator():Container(),

  @override
  void onReady() {
    super.onReady();
    getContactData();
    getUserData();
    getDriveData();
  }
  getContactData()async{
    // final apiResponse = _syncDataRepo.getContactData();
    //if (apiResponse.response != null && apiResponse.response.data["code"] == 200) {
      //Map map = apiResponse.response.data;
      //int apiStatus = map["code"]??0;
      //String message = map["message"]??"";
      // if(apiStatus==200 ){
      //   AllAdsResponseModel adList =AllAdsResponseModel.fromJson(apiResponse.response.data);
      //   allAds.value=adList.data!.items!;
      //
      //   // Success snackbar/alert
      // }else {
      //   // Error snackbar/alert
      // }
    // }
    // else {
    //   String? errorMessage;
    //   if (apiResponse.error is String) {
    //     print(apiResponse.error.toString());
    //     errorMessage = apiResponse.error.toString();
    //   } else {
    //     ErrorResponse errorResponse = ErrorResponse.fromJson(apiResponse.response.data);
    //     print(errorResponse.message);
    //     errorMessage = errorResponse.message;
    //   }
    //   // Error snackbar/alert
    // }
  }
  getUserData()async{
// final response = _syncDataRepo.getUserData();
  }
  getDriveData()async{
// final response = _syncDataRepo.getUserData();
  }
}