

class SyncDataRepo{

  // "ApiResponse" is a class that represent the base API Response from your backend

  // "APICall" is a class where you define every type of request that your system needs such as POST,GET,PUT,DELETE etc

  // "ApiErrorHandler" is a error handling class that handles every type of error that can happen while a network call.



  // Future<ApiResponse> getContactData() async {
  //   try {
  //
  //     return await APICall.Request(requestType: "GET",endPoint: AppEndpoints.ALL_AD_LIST+"?query=");
  //
  //   } catch (e) {
  //     return ApiResponse.withError(ApiErrorHandler.getMessage(e));
  //   }
  // }


  // Future<ApiResponse> getUserData() async {
  //   try {
  //
  //     return await APICall.Request(requestType: "GET",endPoint: AppEndpoints.ALL_AD_LIST+"?query=");
  //
  //   } catch (e) {
  //     return ApiResponse.withError(ApiErrorHandler.getMessage(e));
  //   }
  // }


  // Future<ApiResponse> getDriveData() async {
  //   try {
  //
  //     return await APICall.Request(requestType: "GET",endPoint: AppEndpoints.ALL_AD_LIST+"?query=");
  //
  //   } catch (e) {
  //     return ApiResponse.withError(ApiErrorHandler.getMessage(e));
  //   }
  // }

}