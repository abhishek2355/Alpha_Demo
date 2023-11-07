import 'package:flutter/material.dart';
import 'package:alpha_devayani/constants/app_heights.dart' as app_heights;
import 'package:alpha_devayani/constants/app_strings.dart' as app_strings;
import 'package:alpha_devayani/constants/app_widths.dart' as app_widths;
import 'icon_and_name.dart';

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_back_rounded,
                  size: screenHeight * app_heights.height30),
              Icon(
                Icons.more_horiz_outlined,
                size: screenHeight * app_heights.height30,
              ),
            ],
          ),
          ListTile(
            leading: Icon(
              Icons.account_circle,
              size: screenHeight * app_heights.height60,
            ),
            title: Text(
              app_strings.username,
              style: TextStyle(fontSize: screenHeight * app_heights.height25),
            ),
          ),
          Image.asset(
            "assets/images/a3382bf59efc720e1fea28c9888f9d75.jpg",
            height: screenHeight * app_heights.height250,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: screenHeight * app_heights.height20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconPlusText(
                  iconName: Icons.heart_broken, name: app_strings.like),
              IconPlusText(iconName: Icons.comment, name: app_strings.comment),
              IconPlusText(
                  iconName: Icons.repeat_on_sharp, name: app_strings.repost),
              IconPlusText(iconName: Icons.send, name: app_strings.send),
            ],
          ),
          SizedBox(
            height: screenHeight * app_heights.height20,
          ),
          Padding(
            padding: EdgeInsets.all(screenHeight * app_heights.height10),
            child: Text(
              app_strings.reaction,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: screenHeight * app_heights.height24),
            ),
          ),
          SizedBox(
            height: screenHeight * app_heights.height10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.add_reaction_rounded,
                size: screenHeight * app_heights.height35,
              ),
              Icon(
                Icons.add_reaction_rounded,
                size: screenHeight * app_heights.height35,
              ),
              Icon(
                Icons.add_reaction_rounded,
                size: screenHeight * app_heights.height35,
              ),
              Icon(
                Icons.add_reaction_rounded,
                size: screenHeight * app_heights.height35,
              ),
              Icon(
                Icons.add_reaction_rounded,
                size: screenHeight * app_heights.height35,
              ),
              Icon(
                Icons.add_reaction_rounded,
                size: screenHeight * app_heights.height35,
              ),
              Icon(
                Icons.more_sharp,
                size: screenHeight * app_heights.height35,
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * app_heights.height10,
          ),
          Padding(
            padding: EdgeInsets.all(screenHeight * app_heights.height10),
            child: Text(
              app_strings.comments,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: screenHeight * app_heights.height24),
            ),
          ),
          SizedBox(
            height: screenHeight * app_heights.height10,
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
                            Icon(
                              Icons.more_horiz_outlined,
                              size: screenHeight * app_heights.height35,
                            ),
                          ],
                        ),
                        Text(
                          app_strings.time,
                          style: TextStyle(
                              fontSize: screenHeight * app_heights.height20),
                        ),
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
            child: Text(
              app_strings.likeReply,
              style: TextStyle(fontSize: screenHeight * app_heights.height20),
            ),
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
                              Icon(
                                Icons.more_horiz_outlined,
                                size: screenHeight * app_heights.height35,
                              ),
                            ],
                          ),
                          Text(
                            app_strings.time,
                            style: TextStyle(
                                fontSize: screenHeight * app_heights.height20),
                          ),
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
