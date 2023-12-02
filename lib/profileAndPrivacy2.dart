import 'package:alpha_devayani/SeperateProfile.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:alpha_devayani/constants/app_heights.dart' as app_heights;
import 'package:alpha_devayani/constants/app_strings.dart' as app_strings;
import 'package:alpha_devayani/constants/app_widths.dart' as app_widths;
import 'package:flutter/cupertino.dart';

class Profile2 extends StatefulWidget {
  const Profile2({super.key});

  @override
  State<Profile2> createState() => _Profile2State();
}

class _Profile2State extends State<Profile2> {
  //For switching
  bool isSelected = false;

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
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                SizedBox(
                  width: screenWidth * app_widths.width130,
                ),
                Text(
                  app_strings.profileAndPrivacy,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: screenHeight * app_heights.height25),
                ),
              ],
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * app_widths.width10,
                    vertical: screenHeight * app_heights.height10),
                child: ListView(
                  children: [
                    Text(app_strings.yourPublicProfile),
                    SeperateSettings(name: app_strings.username),
                    SeperateSettings(name: app_strings.viewWebProfile),
                    SeperateSettings(name: app_strings.shareMyProfile),
                    Text(app_strings.privacyAndVisibility),
                    SeperateSettings(name: app_strings.visibility),
                    ListTile(
                      title: Text(
                        app_strings.privacyMode,
                        style: TextStyle(
                          fontSize: screenHeight * app_heights.height25,
                        ),
                      ),
                      subtitle: Text(
                        app_strings
                            .unableOrDisablePrivateModeforincognitobrowsing,
                        style: TextStyle(
                            fontSize: screenHeight * app_heights.height20,
                            color: Colors.grey),
                      ),
                      trailing: Switch(
                        onChanged: (value) {
                          setState(() {
                            isSelected = !isSelected;
                          });
                        },
                        value: isSelected,
                      ),
                    ),
                    SeperateSettings(name: app_strings.profileVerification),
                    SeperateSettings(name: app_strings.blockedUsers),
                    Text(app_strings.messagesAndActiveStatus),
                    SeperateSettings(name: app_strings.manageActiveStatus),
                    SeperateSettings(name: app_strings.username),
                  ], //
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
