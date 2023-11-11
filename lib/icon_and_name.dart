import 'package:flutter/material.dart';
import 'package:alpha_devayani/constants/app_heights.dart' as app_heights;

class IconPlusText extends StatelessWidget {
  final IconData iconName;
  final String name;

  const IconPlusText({super.key, required this.iconName, required this.name});

  @override
  Widget build(BuildContext context) {
    var deviceMedia = MediaQuery.of(context);
    final double screenHeight = deviceMedia.size.height - deviceMedia.padding.top - deviceMedia.padding.bottom;

    return Column(
      children: [
        Icon(
          iconName,
          size: screenHeight * app_heights.height30,
        ),
        SizedBox(
          height: screenHeight * app_heights.height5,
        ),
        Text(
          name,
          style: TextStyle(fontSize: screenHeight * app_heights.height22),
        ),
      ],
    );
  }
}
