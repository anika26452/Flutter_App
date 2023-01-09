

import 'package:my_first_flutter_app/src/core/values/appConfig.dart';
import 'package:my_first_flutter_app/src/data/endpoint.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class AuthRepo{
  Future<dynamic> getUser(Map userdata) async{

    var userid = userdata['userid'];
    var password = userdata['password'];

    var url = Uri.parse(AppConfig.BASE_URL +USER_INFO+ '/'+userid+"/"+password);

    print("=========================");
    print(AppConfig.BASE_URL +USER_INFO+ '/'+userid+"/"+password);

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
        return responseJson;

      }else{
        return false;
      }
    } catch (error) {
      return false;
    }
  }
}