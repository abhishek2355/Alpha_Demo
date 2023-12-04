import 'package:flutter/cupertino.dart';
import 'package:alpha_devayani/heading_row.dart';
import 'package:flutter/material.dart';
import 'package:alpha_devayani/constants/app_heights.dart' as app_heights;
import 'package:alpha_devayani/constants/app_strings.dart' as app_strings;
import 'package:alpha_devayani/constants/app_widths.dart' as app_widths;

class ManageMeassages extends StatefulWidget {
  const ManageMeassages({super.key});

  @override
  State<ManageMeassages> createState() => _ManageMessages();
}

class _ManageMessages extends State<ManageMeassages> {
  bool istaped = false;
  bool intaped = false;

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
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * app_widths.width10,
                  vertical: screenHeight * app_heights.height10),
              child: HeadingRow(name: app_strings.manageMessages),
            ),
            SizedBox(
              height: screenHeight * app_heights.height20,
            ),
            ListTile(
              title: Text(
                app_strings.receiveDirectMessages,
                style: TextStyle(fontSize: screenHeight * app_heights.height22),
              ),
              subtitle: Text(
                app_strings.ifThisIsTurnedOff,
                style: TextStyle(fontSize: screenHeight * app_heights.height18),
              ),
              trailing: Switch(
                value: istaped,
                onChanged: (value) {
                  setState(() {
                    istaped = value;
                  });
                },
              ),
              onTap: () {},
            ),
            SizedBox(
              height: screenHeight * app_heights.height20,
            ),
            ListTile(
              title: Text(
                app_strings.readReceipts,
                style: TextStyle(fontSize: screenHeight * app_heights.height22),
              ),
              subtitle: Text(
                app_strings.ifthisTurnedOff,
                style: TextStyle(fontSize: screenHeight * app_heights.height18),
              ),
              trailing: Switch(
                value: intaped,
                onChanged: (value) {
                  setState(() {
                    intaped = value;
                  });
                },
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
