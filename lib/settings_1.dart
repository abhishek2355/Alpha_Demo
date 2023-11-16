import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alpha_devayani/constants/app_heights.dart' as app_heights;
import 'package:alpha_devayani/constants/app_strings.dart' as app_strings;
import 'package:alpha_devayani/constants/app_widths.dart' as app_widths;
import 'package:settings_ui/settings_ui.dart';

class Setting1 extends StatelessWidget {
  const Setting1({super.key});

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
                  app_strings.setting1,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: screenHeight * app_heights.height25),
                ),
              ],
            ),
            Card(
              child: ListTile(
                tileColor: Colors.deepPurple.shade600,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        screenHeight * app_heights.height25)),
                contentPadding:
                    EdgeInsets.all(screenHeight * app_heights.height20),
                leading: Icon(
                  Icons.star,
                  size: screenHeight * app_heights.height30,
                  color: Colors.white,
                ),
                title: Text(
                  app_strings.upgradeMembershipNow,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  app_strings.enjoyAllTheBenefitsAndExploreMorePossibilities,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: screenHeight * app_heights.height30,
                  color: Colors.white,
                ),
                onTap: () {},
              ),
            ),
            Flexible(
              child: SettingsList(
                sections: [
                  SettingsSection(
                    tiles: <SettingsTile>[
                      SettingsTile.navigation(
                        leading: Icon(
                          Icons.build_circle_rounded,
                          size: screenHeight * app_heights.height30,
                        ),
                        title: Text(
                          app_strings.discoveryPerferences,
                          style: TextStyle(
                              fontSize: screenHeight * app_heights.height20),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: screenHeight * app_heights.height30,
                        ),
                        onPressed: (context) {},
                      ),
                    ],
                  ),
                  SettingsSection(
                    tiles: <SettingsTile>[
                      SettingsTile.navigation(
                        leading: Icon(
                          Icons.person,
                          size: screenHeight * app_heights.height30,
                        ),
                        title: Text(
                          app_strings.profileAndPrivacy,
                          style: TextStyle(
                              fontSize: screenHeight * app_heights.height20),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: screenHeight * app_heights.height30,
                        ),
                        onPressed: (context) {},
                      ),
                    ],
                  ),
                  SettingsSection(
                    tiles: <SettingsTile>[
                      SettingsTile.navigation(
                        leading: Icon(
                          Icons.notifications,
                          size: screenHeight * app_heights.height30,
                        ),
                        title: Text(
                          app_strings.notification,
                          style: TextStyle(
                              fontSize: screenHeight * app_heights.height20),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: screenHeight * app_heights.height30,
                        ),
                        onPressed: (context) {},
                      ),
                    ],
                  ),
                  SettingsSection(
                    tiles: <SettingsTile>[
                      SettingsTile.navigation(
                        leading: Icon(
                          Icons.security_outlined,
                          size: screenHeight * app_heights.height30,
                        ),
                        title: Text(
                          app_strings.accountandSecurity,
                          style: TextStyle(
                              fontSize: screenHeight * app_heights.height20),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: screenHeight * app_heights.height30,
                        ),
                        onPressed: (context) {},
                      ),
                    ],
                  ),
                  SettingsSection(
                    tiles: <SettingsTile>[
                      SettingsTile.navigation(
                        leading: Icon(
                          Icons.subscriptions_outlined,
                          size: screenHeight * app_heights.height30,
                        ),
                        title: Text(
                          app_strings.subscription,
                          style: TextStyle(
                              fontSize: screenHeight * app_heights.height20),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: screenHeight * app_heights.height30,
                        ),
                        onPressed: (context) {},
                      ),
                    ],
                  ),
                  SettingsSection(
                    tiles: <SettingsTile>[
                      SettingsTile.navigation(
                        leading: Icon(
                          Icons.remove_red_eye_sharp,
                          size: screenHeight * app_heights.height30,
                        ),
                        title: Text(
                          app_strings.appAppearance,
                          style: TextStyle(
                              fontSize: screenHeight * app_heights.height20),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: screenHeight * app_heights.height30,
                        ),
                        onPressed: (context) {},
                      ),
                    ],
                  ),
                  SettingsSection(
                    tiles: <SettingsTile>[
                      SettingsTile.navigation(
                        leading: Icon(
                          Icons.compare_arrows_sharp,
                          size: screenHeight * app_heights.height30,
                        ),
                        title: Text(
                          app_strings.thirdPartyIntergration,
                          style: TextStyle(
                              fontSize: screenHeight * app_heights.height20),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: screenHeight * app_heights.height30,
                        ),
                        onPressed: (context) {},
                      ),
                    ],
                  ),
                  SettingsSection(
                    tiles: <SettingsTile>[
                      SettingsTile.navigation(
                        leading: Icon(
                          Icons.analytics_sharp,
                          size: screenHeight * app_heights.height30,
                        ),
                        title: Text(
                          app_strings.dataAndAnalytics,
                          style: TextStyle(
                              fontSize: screenHeight * app_heights.height20),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: screenHeight * app_heights.height30,
                        ),
                        onPressed: (context) {},
                      ),
                    ],
                  ),
                  SettingsSection(
                    tiles: <SettingsTile>[
                      SettingsTile.navigation(
                        leading: Icon(
                          Icons.support,
                          size: screenHeight * app_heights.height30,
                        ),
                        title: Text(
                          app_strings.helpAndSupport,
                          style: TextStyle(
                              fontSize: screenHeight * app_heights.height20),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: screenHeight * app_heights.height30,
                        ),
                        onPressed: (context) {},
                      ),
                    ],
                  ),
                  SettingsSection(
                    tiles: <SettingsTile>[
                      SettingsTile.navigation(
                        leading: Icon(
                          Icons.logout_rounded,
                          size: screenHeight * app_heights.height30,
                        ),
                        title: Text(
                          app_strings.logout,
                          style: TextStyle(
                            fontSize: screenHeight * app_heights.height20,
                            color: Colors.red,
                          ),
                        ),
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
