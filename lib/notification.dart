import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alpha_devayani/constants/app_strings.dart' as app_strings;
import 'package:settings_ui/settings_ui.dart';
import 'package:alpha_devayani/constants/app_heights.dart' as app_heights;
import 'package:alpha_devayani/constants/app_strings.dart' as app_strings;
import 'package:alpha_devayani/constants/app_widths.dart' as app_widths;

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

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
                Text(app_strings.notification),
              ],
            ),
            Flexible(
              child: SizedBox(
                height: screenHeight * app_heights.height890,
                child: SettingsList(
                  sections: [
                    SettingsSection(
                      tiles: <SettingsTile>[
                        SettingsTile.navigation(
                          leading: Icon(Icons.account_circle_sharp),
                          title: Text(app_strings.followRequest),
                          value: Text(app_strings.approveOrIgnoreRequest),
                          onPressed: (context) {},
                        ),
                      ],
                    ),
                    SettingsSection(
                      title: Text(
                        app_strings.nneew,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      tiles: <SettingsTile>[
                        SettingsTile.navigation(
                          leading: Icon(Icons.account_circle_sharp),
                          title: RichText(
                            text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                    text: app_strings.username,
                                    style: TextStyle(
                                        fontSize: screenHeight *
                                            app_heights.height30)),
                                TextSpan(text: app_strings.likedYourPost),
                              ],
                            ),
                          ),
                          trailing: ElevatedButton(
                            child: Text(app_strings.followw),
                            onPressed: () {
                              print(app_strings.follwing);
                            },
                          ),
                          onPressed: (context) {},
                        ),
                      ],
                    ),
                    SettingsSection(
                      tiles: <SettingsTile>[
                        SettingsTile.navigation(
                          leading: Icon(Icons.account_circle_sharp),
                          title: RichText(
                            text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                    text: app_strings.username,
                                    style: TextStyle(
                                        fontSize: screenHeight *
                                            app_heights.height30)),
                                TextSpan(text: app_strings.likedYourPost),
                              ],
                            ),
                          ),
                          trailing: Icon(Icons.account_circle),
                          onPressed: (context) {},
                        ),
                      ],
                    ),
                    SettingsSection(
                      tiles: <SettingsTile>[
                        SettingsTile.navigation(
                          leading: Icon(Icons.account_circle_sharp),
                          title: RichText(
                            text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                    text: app_strings.username,
                                    style: TextStyle(
                                        fontSize: screenHeight *
                                            app_heights.height30)),
                                TextSpan(text: app_strings.likedYourPost),
                              ],
                            ),
                          ),
                          trailing: ElevatedButton(
                            child: Text(app_strings.follwing),
                            onPressed: () {
                              print(app_strings.follwing);
                            },
                          ),
                          onPressed: (context) {},
                        ),
                      ],
                    ),
                    SettingsSection(
                      title: Text(
                        app_strings.yesterday,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      tiles: <SettingsTile>[
                        SettingsTile.navigation(
                          leading: Icon(Icons.account_circle_sharp),
                          title: RichText(
                            text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                    text: app_strings.username,
                                    style: TextStyle(
                                        fontSize: screenHeight *
                                            app_heights.height30)),
                                TextSpan(text: app_strings.likedYourPost),
                              ],
                            ),
                          ),
                          trailing: ElevatedButton(
                            child: Text(app_strings.followw),
                            onPressed: () {
                              print(app_strings.follwing);
                            },
                          ),
                          onPressed: (context) {},
                        ),
                      ],
                    ),
                    SettingsSection(
                      tiles: <SettingsTile>[
                        SettingsTile.navigation(
                          leading: Icon(Icons.account_circle_sharp),
                          title: RichText(
                            text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                    text: app_strings.username,
                                    style: TextStyle(
                                        fontSize: screenHeight *
                                            app_heights.height30)),
                                TextSpan(text: app_strings.likedYourPost),
                              ],
                            ),
                          ),
                          trailing: Icon(Icons.account_circle),
                          onPressed: (context) {},
                        ),
                      ],
                    ),
                    SettingsSection(
                      tiles: <SettingsTile>[
                        SettingsTile.navigation(
                          leading: Icon(Icons.account_circle_sharp),
                          title: RichText(
                            text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                    text: app_strings.username,
                                    style: TextStyle(
                                        fontSize: screenHeight *
                                            app_heights.height30)),
                                TextSpan(text: app_strings.likedYourPost),
                              ],
                            ),
                          ),
                          trailing: ElevatedButton(
                            child: Text(app_strings.follwing),
                            onPressed: () {
                              print(app_strings.follwing);
                            },
                          ),
                          onPressed: (context) {},
                        ),
                      ],
                    ),
                    SettingsSection(
                      tiles: <SettingsTile>[
                        SettingsTile.navigation(
                          leading: Icon(Icons.account_circle_sharp),
                          title: RichText(
                            text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                    text: app_strings.username,
                                    style: TextStyle(
                                        fontSize: screenHeight *
                                            app_heights.height30)),
                                TextSpan(text: app_strings.likedYourPost),
                              ],
                            ),
                          ),
                          trailing: Icon(Icons.account_circle),
                          onPressed: (context) {},
                        ),
                      ],
                    ),
                    SettingsSection(
                      title: Text(
                        app_strings.last7Days,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      tiles: <SettingsTile>[
                        SettingsTile.navigation(
                          leading: Icon(Icons.account_circle_sharp),
                          title: RichText(
                            text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                    text: app_strings.username,
                                    style: TextStyle(
                                        fontSize: screenHeight *
                                            app_heights.height30)),
                                TextSpan(text: app_strings.likedYourPost),
                              ],
                            ),
                          ),
                          trailing: ElevatedButton(
                            child: Text(app_strings.follwing),
                            onPressed: () {
                              print(app_strings.follwing);
                            },
                          ),
                          onPressed: (context) {},
                        ),
                      ],
                    ),
                    SettingsSection(
                      tiles: <SettingsTile>[
                        SettingsTile.navigation(
                          leading: Icon(Icons.account_circle_sharp),
                          title: RichText(
                            text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                    text: app_strings.username,
                                    style: TextStyle(
                                        fontSize: screenHeight *
                                            app_heights.height30)),
                                TextSpan(text: app_strings.likedYourPost),
                              ],
                            ),
                          ),
                          trailing: Icon(Icons.account_circle),
                          onPressed: (context) {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
