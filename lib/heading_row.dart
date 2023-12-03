import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alpha_devayani/constants/app_heights.dart' as app_heights;
import 'package:alpha_devayani/constants/app_strings.dart' as app_strings;
import 'package:alpha_devayani/constants/app_widths.dart' as app_widths;

class HeadingRow extends StatelessWidget {
  final String name;

  const HeadingRow({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    var deviceMedia = MediaQuery.of(context);
    final double screenHeight = deviceMedia.size.height -
        deviceMedia.padding.top -
        deviceMedia.padding.bottom;
    final double screenWidth = deviceMedia.size.width -
        deviceMedia.padding.left -
        deviceMedia.padding.right;

    return Row(
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        SizedBox(
          width: screenWidth * app_widths.width130,
        ),
        Text(
          name,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: screenHeight * app_heights.height25),
        ),
      ],
    );
  }
}
