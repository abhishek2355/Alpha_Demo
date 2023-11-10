import 'package:alpha_devayani/search_RecentsearchListtileUsernameie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alpha_devayani/constants/app_heights.dart' as app_heights;
import 'package:alpha_devayani/constants/app_strings.dart' as app_strings;
import 'package:alpha_devayani/constants/app_widths.dart' as app_widths;

class RecentSearchPage extends StatelessWidget {
  const RecentSearchPage({super.key});
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.arrow_back_rounded,
                    size: screenHeight * app_heights.height30),
                Text(
                  app_strings.recentSearches,
                  style:
                      TextStyle(fontSize: screenHeight * app_heights.height20),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * app_widths.width10,
                vertical: screenHeight * app_heights.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  app_strings.recentSearches,
                  style:
                      TextStyle(fontSize: screenHeight * app_heights.height20),
                ),
                Text(
                  app_strings.clearAll,
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: screenHeight * app_heights.height20),
                ),
              ],
            ),
          ),
          ListtileUsername(),
          ListtileUsername(),
          ListtileUsername(),
        ],
      ),
    ));
  }
}
