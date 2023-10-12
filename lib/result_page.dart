import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:alpha_devayani/constants/app_heights.dart' as app_heights;
import 'package:alpha_devayani/constants/app_strings.dart' as app_strings;
import 'package:alpha_devayani/constants/app_widths.dart' as app_widths;

class SharePage extends StatefulWidget {
  const SharePage({super.key});

  @override
  State<SharePage> createState() => _SharePageState();
}

class _SharePageState extends State<SharePage> {
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
                Text(app_strings.settingAndPrivacyHedingText),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(screenHeight * app_heights.height5),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(screenHeight * app_heights.height20)),
                  ),
                  hintText: app_strings.search,
                  icon: Icon(Icons.search_rounded),
                  hoverColor: Colors.grey,
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: screenHeight * app_heights.height926,
                child: SettingsList(
                  sections: [
                    SettingsSection(
                      title: Text(
                        app_strings.yourAccount,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      tiles: <SettingsTile>[
                        SettingsTile.navigation(
                          leading: Icon(Icons.account_circle_rounded),
                          title: Text(app_strings.account),
                          value: Text(app_strings.accountSubtitle),
                          trailing:
                              Icon(Icons.keyboard_double_arrow_right_outlined),
                          onPressed: (context) {},
                        ),
                      ],
                    ),
                    SettingsSection(
                      title: Text(
                        app_strings.howYouUseInstagram,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      tiles: <SettingsTile>[
                        SettingsTile.navigation(
                          leading: Icon(Icons.notifications_on_sharp),
                          title: Text(app_strings.notification),
                          trailing:
                              Icon(Icons.keyboard_double_arrow_right_outlined),
                          onPressed: (context) {},
                        ),
                      ],
                    ),
                    SettingsSection(
                      tiles: <SettingsTile>[
                        SettingsTile.navigation(
                          leading: Icon(Icons.timer_rounded),
                          title: Text(app_strings.timeSpent),
                          trailing:
                              Icon(Icons.keyboard_double_arrow_right_outlined),
                          onPressed: (context) {},
                        ),
                      ],
                    ),
                    SettingsSection(
                      title: Text(
                        app_strings.whoCanSeeYourContent,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      tiles: <SettingsTile>[
                        SettingsTile.navigation(
                          leading: Icon(Icons.privacy_tip_rounded),
                          title: Text(app_strings.accountPrivacy),
                          trailing:
                              Icon(Icons.keyboard_double_arrow_right_outlined),
                          onPressed: (context) {},
                        ),
                      ],
                    ),
                    SettingsSection(
                      tiles: <SettingsTile>[
                        SettingsTile.navigation(
                          leading: Icon(Icons.emoji_people_rounded),
                          title: Text(app_strings.closeFriends),
                          trailing:
                              Icon(Icons.keyboard_double_arrow_right_outlined),
                          onPressed: (context) {},
                        ),
                      ],
                    ),
                    SettingsSection(
                      tiles: <SettingsTile>[
                        SettingsTile.navigation(
                          leading: Icon(Icons.block_flipped),
                          title: Text(app_strings.blocked),
                          trailing:
                              Icon(Icons.keyboard_double_arrow_right_outlined),
                          onPressed: (context) {},
                        ),
                      ],
                    ),
                    SettingsSection(
                      title: Text(
                        app_strings.howOthersCanInteractWithYou,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      tiles: <SettingsTile>[
                        SettingsTile.navigation(
                          leading: Icon(Icons.message_rounded),
                          title: Text(app_strings.messagesAndStoryReply),
                          trailing:
                              Icon(Icons.keyboard_double_arrow_right_outlined),
                          onPressed: (context) {},
                        ),
                      ],
                    ),
                    SettingsSection(
                      tiles: <SettingsTile>[
                        SettingsTile.navigation(
                          leading: Icon(Icons.comment_rounded),
                          title: Text(app_strings.comments),
                          trailing:
                              Icon(Icons.keyboard_double_arrow_right_outlined),
                          onPressed: (context) {},
                        ),
                      ],
                    ),
                    SettingsSection(
                      title: Text(
                        app_strings.moveInfoAndSupport,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      tiles: <SettingsTile>[
                        SettingsTile.navigation(
                          leading: Icon(Icons.person_pin),
                          title: Text(app_strings.accountStatus),
                          trailing:
                              Icon(Icons.keyboard_double_arrow_right_outlined),
                          onPressed: (context) {},
                        ),
                      ],
                    ),
                    SettingsSection(
                      tiles: <SettingsTile>[
                        SettingsTile.navigation(
                          leading: Icon(Icons.person_pin_outlined),
                          title: Text(app_strings.about),
                          trailing:
                              Icon(Icons.keyboard_double_arrow_right_outlined),
                          onPressed: (context) {},
                        ),
                      ],
                    ),
                    SettingsSection(
                      tiles: <SettingsTile>[
                        SettingsTile.navigation(
                          leading: Icon(Icons.logout_rounded),
                          title: Text(
                            app_strings.logoutUsername,
                            style: TextStyle(color: Colors.red),
                          ),
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
