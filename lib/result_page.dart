import 'package:alpha_devayani/setting_and_privacy_listtile_widget.dart';
import 'package:flutter/material.dart';
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
    // Accessing MediaQuery for responsive layout
    // Calculate the height and width of the screen.
    var deviceMedia = MediaQuery.of(context);
    final double screenHeight = deviceMedia.size.height -
        deviceMedia.padding.top -
        deviceMedia.padding.bottom;
    final double screenWidth = deviceMedia.size.width -
        deviceMedia.padding.left -
        deviceMedia.padding.right;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * app_widths.width16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                      child: Icon(
                        Icons.arrow_back_rounded,
                      ),
                      onTap: () {},
                    ),
                    SizedBox(
                      width: screenWidth * app_widths.width28,
                    ),
                    Text(
                      app_strings.settingAndPrivacyHedingText,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: screenHeight * app_heights.height25),
                    ),
                  ],
                ),

                SizedBox(
                  height: screenHeight * app_heights.height16,
                ),
                //Search Box
                TextFormField(
                  decoration: InputDecoration(hintText: 'Search'),
                ),

                SizedBox(
                  height: screenHeight * app_heights.height25,
                ),

                //Account
                Text(
                  app_strings.yourAccount,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                ListTileWithIconsAndContent(
                  iconName: Icons.people_outline,
                  title: app_strings.account,
                  subtitle: app_strings.accountSubtitle,
                ),

                // SizedBox(
                //   height: screenHeight * app_heights.height58,
                // ),

                //user guidance
                Text(
                  app_strings.howYouUseInstagram,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                ListTileWithIconsAndContent(
                  iconName: Icons.notifications_on_sharp,
                  title: app_strings.notification,
                  subtitle: '',
                ),

                ListTileWithIconsAndContent(
                  iconName: Icons.access_time_filled_sharp,
                  title: app_strings.timeSpent,
                  subtitle: '',
                ),

                //Who can see your content
                Text(
                  app_strings.whoCanSeeYourContent,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                ListTileWithIconsAndContent(
                  iconName: Icons.privacy_tip_outlined,
                  title: app_strings.accountPrivacy,
                  subtitle: '',
                ),

                ListTileWithIconsAndContent(
                  iconName: Icons.emoji_people_outlined,
                  title: app_strings.closeFriends,
                  subtitle: '',
                ),

                ListTileWithIconsAndContent(
                  iconName: Icons.block_sharp,
                  title: app_strings.blocked,
                  subtitle: '',
                ),

                //next section how
                Text(
                  app_strings.howOthersCanInteractWithYou,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                ListTileWithIconsAndContent(
                  iconName: Icons.message_rounded,
                  title: app_strings.messagesAndStoryReply,
                  subtitle: '',
                ),

                ListTileWithIconsAndContent(
                  iconName: Icons.comment_rounded,
                  title: app_strings.comments,
                  subtitle: '',
                ),

                //next section
                Text(
                  app_strings.moveInfoAndSupport,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                ListTileWithIconsAndContent(
                  iconName: Icons.person_pin,
                  title: app_strings.accountStatus,
                  subtitle: '',
                ),

                ListTileWithIconsAndContent(
                  iconName: Icons.person_pin_outlined,
                  title: app_strings.about,
                  subtitle: '',
                ),
                // Logout

                Padding(
                  padding: EdgeInsets.only(
                      bottom: screenHeight * app_heights.height20),
                  child: Text(
                    app_strings.logoutUsername,
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
