import 'package:flutter/material.dart';

import 'constant.dart';

class MainAppName extends StatelessWidget {
  String text = '';
  MainAppName({required this.text});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Constants.mainColor),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.0556),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image(
            //   image: const AssetImage('lib/assets/logohunganh_1.jpg'),
            //   width: SizeConfig.screenWidth * 0.2560,
            // ),
            // SizedBox(
            //   width: SizeConfig.screenWidth * 0.1024,
            // ),
            Image(
              image: const AssetImage('lib/assets/logo_bachkhoa-nobackgr.png'),
              width: SizeConfig.screenWidth * 0.5006,
            )
          ],
        ),
      ],
    );
  }
}
