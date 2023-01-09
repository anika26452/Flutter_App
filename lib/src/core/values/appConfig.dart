import 'package:flutter/material.dart';

var this_year = DateTime.now().year.toString();

class AppConfig {

  static String default_language = "en";
  static const bool HTTPS = false;
  //  static const bool HTTPS = true;
  static const DOMAIN_PATH = "172.16.9.186:4000";


  static const String API_END_PATH = "api/";

  static const String PROTOCOL = HTTPS ? "https://" : "http://";
  static const String RAW_BASE_URL = "${PROTOCOL}${DOMAIN_PATH}";
  static const String BASE_URL = "${RAW_BASE_URL}/${API_END_PATH}";
}