import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alpha_devayani/constants/app_heights.dart' as app_heights;
import 'package:alpha_devayani/constants/app_strings.dart' as app_strings;
import 'package:alpha_devayani/constants/app_widths.dart' as app_widths;

class ListTileself extends StatelessWidget {
  final String name;
  final String subName;

  const ListTileself({super.key, required this.name, required this.subName});

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
      title: Text(
        name,
        style: TextStyle(fontSize: screenHeight * app_heights.height22),
      ),
      subtitle: Text(
        subName,
        style: TextStyle(fontSize: screenHeight * app_heights.height18),
      ),
      trailing: Icon(Icons.arrow_forward_ios,
          size: screenHeight * app_heights.height30),
      onTap: () {},
    );
  }
}
