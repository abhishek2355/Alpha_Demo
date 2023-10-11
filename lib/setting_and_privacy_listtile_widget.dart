import 'package:flutter/material.dart';
import 'package:alpha_devayani/constants/app_heights.dart' as app_heights;

class ListTileWithIconsAndContent extends StatelessWidget {
  final IconData iconName;
  final String title;
  final String? subtitle;
  // final IconData trailingIconName;
  const ListTileWithIconsAndContent({
    super.key,
    required this.iconName,
    required this.title,
    this.subtitle,
    // required this.trailingIconName,
  });

  @override
  Widget build(BuildContext context) {
    var deviceMedia = MediaQuery.of(context);
    final double screenHeight = deviceMedia.size.height -
        deviceMedia.padding.top -
        deviceMedia.padding.bottom;
    return ListTile(
      leading: Icon(
        iconName,
        size: screenHeight * app_heights.height26,
      ),
      title: Text(title),
      subtitle: Text(subtitle!),
      trailing: Icon(
        Icons.keyboard_double_arrow_right_outlined,
        size: screenHeight * app_heights.height24,
      ),
    );
  }
}
