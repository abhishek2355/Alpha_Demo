import 'package:alpha_devayani/seperateWidegetSetting.dart';
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
              child: ListView(
                children: [
                  SeperateSettings(
                    iconName: Icons.build_circle_rounded,
                    name: app_strings.discoveryPerferences,
                  ),
                  SeperateSettings(
                    iconName: Icons.person,
                    name: app_strings.profileAndPrivacy,
                  ),
                  SeperateSettings(
                    iconName: Icons.notifications_on_sharp,
                    name: app_strings.notification,
                  ),
                  SeperateSettings(
                    iconName: Icons.security,
                    name: app_strings.accountandSecurity,
                  ),
                  SeperateSettings(
                    iconName: Icons.star,
                    name: app_strings.subscription,
                  ),
                  SeperateSettings(
                    iconName: Icons.remove_red_eye_outlined,
                    name: app_strings.appAppearance,
                  ),
                  SeperateSettings(
                    iconName: Icons.compare_arrows_outlined,
                    name: app_strings.thirdPartyIntergration,
                  ),
                  SeperateSettings(
                    iconName: Icons.analytics_outlined,
                    name: app_strings.dataAndAnalytics,
                  ),
                  SeperateSettings(
                    iconName: Icons.help_center_outlined,
                    name: app_strings.helpAndSupport,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.logout_rounded,
                      size: screenHeight * app_heights.height30,
                    ),
                    title: Text(
                      app_strings.logout,
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: screenHeight * app_heights.height20),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
