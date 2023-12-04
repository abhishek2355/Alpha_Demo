import 'package:alpha_devayani/heading_row.dart';
import 'package:alpha_devayani/listTileTitleSubAndTRai.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alpha_devayani/constants/app_heights.dart' as app_heights;
import 'package:alpha_devayani/constants/app_strings.dart' as app_strings;
import 'package:alpha_devayani/constants/app_widths.dart' as app_widths;

class DataAnalytics extends StatelessWidget {
  const DataAnalytics({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceMedia = MediaQuery.of(context);
    final double screenHeight = deviceMedia.size.height -
        deviceMedia.padding.top -
        deviceMedia.padding.bottom;
    final double screenWidth = deviceMedia.size.width -
        deviceMedia.padding.left -
        deviceMedia.padding.right;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * app_widths.width10,
                  vertical: screenHeight * app_heights.height10),
              child: HeadingRow(name: app_strings.dataAnalytics),
            ),
            ListTileself(
                name: app_strings.dataUsage,
                subName: app_strings.controlHowYourdata),
            SizedBox(
              height: screenHeight * app_heights.height20,
            ),
            ListTileself(
                name: app_strings.adPreferences,
                subName: app_strings.manageAdPersonalization),
            SizedBox(
              height: screenHeight * app_heights.height20,
            ),
            ListTileself(
                name: app_strings.downloadMyData,
                subName: app_strings.requestACopyOfYour),
          ],
        ),
      ),
    );
  }
}
