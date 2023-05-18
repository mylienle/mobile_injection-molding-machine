import 'package:flutter/material.dart';

late double screenWidthGlobal;

class Constants {
  static const Color mainColor = Color(0xff001D37);
  static const Color secondaryColor = Color(0xff00294D);
  static const String baseUrlProduct =
      "http://10.84.50.10:8081/api/products/details/";
  // hoi lai bé Đạt đường link lấy theo từng DeviceId
  static const String signalRUrl = "http://10.84.70.80:8085/websockethub";
  static const String baseUrlPreshift = '';
}

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth; //logical pixel
  static late double screenHeight; //logical pixel
  late double aspect;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    screenWidthGlobal = screenWidth; //2; 1.777778
  }
}
