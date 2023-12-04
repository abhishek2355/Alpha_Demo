import 'package:alpha_devayani/listTileTitleSubAndTRai.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alpha_devayani/constants/app_heights.dart' as app_heights;
import 'package:alpha_devayani/constants/app_strings.dart' as app_strings;
import 'package:alpha_devayani/constants/app_widths.dart' as app_widths;
import 'package:settings_ui/settings_ui.dart';

class Username3 extends StatelessWidget {
  const Username3({super.key});
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                SizedBox(
                  width: screenWidth * app_widths.width130,
                ),
                Text(
                  app_strings.username,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: screenHeight * app_heights.height25),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * app_widths.width10,
                  vertical: screenHeight * app_heights.height10),
              child: Text(
                "app_strings.changeusername",
                style: TextStyle(fontSize: screenHeight * app_heights.height20),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * app_widths.width10,
                  vertical: screenHeight * app_heights.height10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                        screenHeight * app_heights.height20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * app_widths.width10,
                  vertical: screenHeight * app_heights.height10),
              child: Text(
                "app_strings.youCanOnlyChangeYourUsernameOnesEverymont",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: screenHeight * app_heights.height25),
              ),
            ),
            SizedBox(
              height: screenHeight * app_heights.height30,
            ),
            Center(
              child: Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("save"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
