import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alpha_devayani/constants/app_heights.dart' as app_heights;
import 'package:alpha_devayani/constants/app_strings.dart' as app_strings;
import 'package:alpha_devayani/constants/app_widths.dart' as app_widths;

class RowScrolling extends StatelessWidget {
  // final String text;
  //
  // const RowScrolling({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    var deviceMedia = MediaQuery.of(context);
    final double screenHeight = deviceMedia.size.height -
        deviceMedia.padding.top -
        deviceMedia.padding.bottom;
    final double screenWidth = deviceMedia.size.width -
        deviceMedia.padding.left -
        deviceMedia.padding.right;

    return Container(
      height: screenHeight * app_heights.height60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * app_widths.width10,
                vertical: screenHeight * app_heights.height10),
            child: InkWell(
                onTap: () {},
                child: Container(
                  width: screenWidth * app_widths.width100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        screenHeight * app_heights.height10),
                    color: Colors.grey.shade200,
                  ),
                  child: Center(
                    child: Text(
                      app_strings.motivational,
                      style: TextStyle(
                          fontSize: screenHeight * app_heights.height20),
                    ),
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * app_widths.width10,
                vertical: screenHeight * app_heights.height10),
            child: InkWell(
                onTap: () {},
                child: Container(
                  width: screenWidth * app_widths.width100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        screenHeight * app_heights.height10),
                    color: Colors.grey.shade200,
                  ),
                  child: Center(
                    child: Text(
                      app_strings.comedy,
                      style: TextStyle(
                          fontSize: screenHeight * app_heights.height20),
                    ),
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * app_widths.width10,
                vertical: screenHeight * app_heights.height10),
            child: InkWell(
                onTap: () {},
                child: Container(
                  width: screenWidth * app_widths.width100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        screenHeight * app_heights.height10),
                    color: Colors.grey.shade200,
                  ),
                  child: Center(
                    child: Text(
                      app_strings.fitness,
                      style: TextStyle(
                          fontSize: screenHeight * app_heights.height20),
                    ),
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * app_widths.width10,
                vertical: screenHeight * app_heights.height10),
            child: InkWell(
                onTap: () {},
                child: Container(
                  width: screenWidth * app_widths.width100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        screenHeight * app_heights.height10),
                    color: Colors.grey.shade200,
                  ),
                  child: Center(
                    child: Text(
                      app_strings.fashion,
                      style: TextStyle(
                          fontSize: screenHeight * app_heights.height20),
                    ),
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * app_widths.width10,
                vertical: screenHeight * app_heights.height10),
            child: InkWell(
                onTap: () {},
                child: Container(
                  width: screenWidth * app_widths.width100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        screenHeight * app_heights.height10),
                    color: Colors.grey.shade200,
                  ),
                  child: Center(
                    child: Text(
                      app_strings.workout,
                      style: TextStyle(
                          fontSize: screenHeight * app_heights.height20),
                    ),
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * app_widths.width10,
                vertical: screenHeight * app_heights.height10),
            child: InkWell(
                onTap: () {},
                child: Container(
                  width: screenWidth * app_widths.width100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        screenHeight * app_heights.height10),
                    color: Colors.grey.shade200,
                  ),
                  child: Center(
                    child: Text(
                      app_strings.travelling,
                      style: TextStyle(
                          fontSize: screenHeight * app_heights.height20),
                    ),
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * app_widths.width10,
                vertical: screenHeight * app_heights.height10),
            child: InkWell(
                onTap: () {},
                child: Container(
                  width: screenWidth * app_widths.width100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        screenHeight * app_heights.height10),
                    color: Colors.grey.shade200,
                  ),
                  child: Center(
                    child: Text(
                      app_strings.game,
                      style: TextStyle(
                          fontSize: screenHeight * app_heights.height20),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
