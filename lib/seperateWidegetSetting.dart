import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:alpha_devayani/constants/app_heights.dart' as app_heights;
import 'package:alpha_devayani/constants/app_strings.dart' as app_strings;
import 'package:alpha_devayani/constants/app_widths.dart' as app_widths;

class SeperateSettings extends StatelessWidget {
  final IconData iconName;
  final String name;

  const SeperateSettings(
      {super.key, required this.iconName, required this.name});

  @override
  Widget build(BuildContext context) {
    var deviceMedia = MediaQuery.of(context);
    final double screenHeight = deviceMedia.size.height -
        deviceMedia.padding.top -
        deviceMedia.padding.bottom;
    final double screenWidth = deviceMedia.size.width -
        deviceMedia.padding.left -
        deviceMedia.padding.right;

    return ListTile(
      leading: Icon(
        iconName,
        size: screenHeight * app_heights.height30,
      ),
      title: Text(
        name,
        style: TextStyle(fontSize: screenHeight * app_heights.height20),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_sharp,
        size: screenHeight * app_heights.height30,
      ),
      onTap: () {},
    );
  }
}
