import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alpha_devayani/constants/app_heights.dart' as app_heights;
import 'package:alpha_devayani/constants/app_strings.dart' as app_strings;
import 'package:alpha_devayani/constants/app_widths.dart' as app_widths;

class SinglePostImage extends StatelessWidget {
  const SinglePostImage({super.key});

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
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_back_rounded),
              Icon(Icons.more_horiz_outlined),
            ],
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text(app_strings.username),
          ),
          Image.asset(
            "assets/images/a3382bf59efc720e1fea28c9888f9d75.jpg",
            height: screenHeight * app_heights.height250,
            width: screenWidth * app_widths.width400,
          ),
          SizedBox(
            height: screenHeight * app_heights.height20,
          ),
          Container(
            width: screenWidth * app_widths.width425,
            height: screenHeight * app_heights.height30,
            color: Colors.grey.shade200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.heart_broken),
                Text(app_strings.like),
                Icon(Icons.comment),
                Text(app_strings.comment),
                Icon(Icons.repeat_on_sharp),
                Text(app_strings.repost),
                Icon(Icons.send),
                Text(app_strings.send),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * app_heights.height20,
          ),
          Padding(
            padding: EdgeInsets.all(screenHeight * app_heights.height10),
            child: Text(
              app_strings.reaction,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: screenHeight * app_heights.height20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.add_reaction_rounded),
              Icon(Icons.add_reaction_rounded),
              Icon(Icons.add_reaction_rounded),
              Icon(Icons.add_reaction_rounded),
              Icon(Icons.add_reaction_rounded),
              Icon(Icons.add_reaction_rounded),
              Icon(Icons.more_sharp),
            ],
          ),
          SizedBox(
            height: screenHeight * app_heights.height20,
          ),
          Padding(
            padding: EdgeInsets.all(screenHeight * app_heights.height10),
            child: Text(
              app_strings.comments,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: screenHeight * app_heights.height20,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(screenHeight * app_heights.height10),
                child: Icon(Icons.circle,
                    size: screenHeight * app_heights.height60),
              ),
              Container(
                  height: screenHeight * app_heights.height130,
                  width: screenWidth * app_widths.width350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        screenHeight * app_heights.height20),
                    color: Colors.grey.shade200,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.all(screenHeight * app_heights.height10),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              app_strings.user1,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      screenHeight * app_heights.height24),
                            ),
                            Icon(Icons.more_horiz_outlined),
                          ],
                        ),
                        Text(app_strings.time),
                        Text(
                          app_strings.heyNicePicture,
                          style: TextStyle(
                              fontSize: screenHeight * app_heights.height24,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: screenHeight * app_heights.height80),
            child: Text(app_strings.likeReply),
          ),
          Padding(
            padding: EdgeInsets.only(left: screenHeight * app_heights.height80),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(screenHeight * app_heights.height10),
                  child: Icon(Icons.circle,
                      size: screenHeight * app_heights.height60),
                ),
                Container(
                    height: screenHeight * app_heights.height130,
                    width: screenWidth * app_widths.width290,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          screenHeight * app_heights.height20),
                      color: Colors.grey.shade200,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.all(screenHeight * app_heights.height10),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                app_strings.user2,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        screenHeight * app_heights.height24),
                              ),
                              Icon(Icons.more_horiz_outlined),
                            ],
                          ),
                          Text(app_strings.user2),
                          Text(
                            app_strings.hlloThankYou,
                            style: TextStyle(
                                fontSize: screenHeight * app_heights.height24,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
