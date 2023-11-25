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
              child: SettingsList(
                sections: [
                  SettingsSection(
                    title: Text(
                      app_strings.yourPublicProfile,
                      style: TextStyle(
                          fontSize: screenHeight * app_heights.height20,
                          color: Colors.grey),
                    ),
                    tiles: <SettingsTile>[
                      SettingsTile.navigation(
                        title: Text(
                          app_strings.username,
                          style: TextStyle(
                            fontSize: screenHeight * app_heights.height25,
                          ),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_sharp,
                            size: screenHeight * app_heights.height25),
                        onPressed: (context) {},
                      ),
                    ],
                  ),
                  SettingsSection(
                    tiles: <SettingsTile>[
                      SettingsTile.navigation(
                        title: Text(
                          app_strings.viewWebProfile,
                          style: TextStyle(
                            fontSize: screenHeight * app_heights.height25,
                          ),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_sharp,
                            size: screenHeight * app_heights.height25),
                        onPressed: (context) {},
                      ),
                    ],
                  ),
                  SettingsSection(
                    tiles: <SettingsTile>[
                      SettingsTile.navigation(
                        title: Text(
                          app_strings.shareMyProfile,
                          style: TextStyle(
                            fontSize: screenHeight * app_heights.height25,
                          ),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_sharp,
                            size: screenHeight * app_heights.height25),
                        onPressed: (context) {},
                      ),
                    ],
                  ),
                  //
                  SettingsSection(
                    title: Text(
                      app_strings.privacyAndVisibility,
                      style: TextStyle(
                          fontSize: screenHeight * app_heights.height20,
                          color: Colors.grey),
                    ),
                    tiles: <SettingsTile>[
                      SettingsTile.navigation(
                        title: Text(
                          app_strings.visibility,
                          style: TextStyle(
                            fontSize: screenHeight * app_heights.height25,
                          ),
                        ),
                        value: Text(
                          app_strings.chooseWhoCanSeeYourProfile,
                          style: TextStyle(
                              fontSize: screenHeight * app_heights.height20,
                              color: Colors.grey),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_sharp,
                            size: screenHeight * app_heights.height25),
                        onPressed: (context) {},
                      ),
                    ],
                  ),

                  SettingsSection(
                    tiles: <SettingsTile>[
                      SettingsTile.navigation(
                          title: Text(
                            app_strings.privacyMode,
                            style: TextStyle(
                              fontSize: screenHeight * app_heights.height25,
                            ),
                          ),
                          value: Text(
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
                          )),
                    ],
                  ),

                  SettingsSection(
                    tiles: <SettingsTile>[
                      SettingsTile.navigation(
                        title: Text(
                          app_strings.profileVerification,
                          style: TextStyle(
                            fontSize: screenHeight * app_heights.height25,
                          ),
                        ),
                        value: Text(
                          app_strings.verifyYourProfileToGainMoreTrust,
                          style: TextStyle(
                              fontSize: screenHeight * app_heights.height20,
                              color: Colors.grey),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_sharp,
                            size: screenHeight * app_heights.height25),
                        onPressed: (context) {},
                      ),
                    ],
                  ),
                  SettingsSection(
                    tiles: <SettingsTile>[
                      SettingsTile.navigation(
                        title: Text(
                          app_strings.blockedUsers,
                          style: TextStyle(
                            fontSize: screenHeight * app_heights.height25,
                          ),
                        ),
                        value: Text(
                          app_strings.thePeopleYouBlockedAreDisplayedHere,
                          style: TextStyle(
                              fontSize: screenHeight * app_heights.height20,
                              color: Colors.grey),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_sharp,
                            size: screenHeight * app_heights.height25),
                        onPressed: (context) {},
                      ),
                    ],
                  ),
                  SettingsSection(
                    title: Text(
                      app_strings.messagesAndActiveStatus,
                      style: TextStyle(
                          fontSize: screenHeight * app_heights.height20,
                          color: Colors.grey),
                    ),
                    tiles: <SettingsTile>[
                      SettingsTile.navigation(
                        title: Text(
                          app_strings.manageActiveStatus,
                          style: TextStyle(
                            fontSize: screenHeight * app_heights.height25,
                          ),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_sharp,
                            size: screenHeight * app_heights.height25),
                        onPressed: (context) {},
                      ),
                    ],
                  ),
                  SettingsSection(
                    tiles: <SettingsTile>[
                      SettingsTile.navigation(
                        title: Text(
                          app_strings.manageMessages,
                          style: TextStyle(
                            fontSize: screenHeight * app_heights.height25,
                          ),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_sharp,
                            size: screenHeight * app_heights.height25),
                        onPressed: (context) {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
