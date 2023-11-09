import 'package:alpha_devayani/row_scrolling_listview.dart';
import 'package:alpha_devayani/search_RecentsearchListtileUsernameie.dart';
import 'package:alpha_devayani/setting_and_privacy_listtile_widget.dart';
import 'package:flutter/material.dart';
import 'package:alpha_devayani/constants/app_heights.dart' as app_heights;
import 'package:alpha_devayani/constants/app_strings.dart' as app_strings;
import 'package:alpha_devayani/constants/app_widths.dart' as app_widths;

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});
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
                  app_strings.whatAreYouLookingFor,
                  style:
                      TextStyle(fontSize: screenHeight * app_heights.height20),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * app_heights.height10,
          ),
          Container(
            height: screenHeight * app_heights.height50,
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius:
                  BorderRadius.circular(screenHeight * app_heights.height30),
            ),
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * app_widths.width24),
            margin: EdgeInsets.symmetric(
                horizontal: screenWidth * app_widths.width15),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: app_strings.search,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Icon(
                  Icons.search,
                  size: screenHeight * app_heights.height30,
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * app_heights.height10,
          ),
          RowScrolling(),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * app_widths.width10,
                vertical: screenHeight * app_heights.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  app_strings.recent,
                  style:
                      TextStyle(fontSize: screenHeight * app_heights.height20),
                ),
                Text(
                  app_strings.seeAll,
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: screenHeight * app_heights.height20),
                )
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * app_heights.height10,
          ),
          ListtileUsername(),
          ListtileUsername(),
          ListtileUsername(),
        ],
      ),
    ));
  }
}
