import 'package:alpha_devayani/heading_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alpha_devayani/constants/app_heights.dart' as app_heights;
import 'package:alpha_devayani/constants/app_strings.dart' as app_strings;
import 'package:alpha_devayani/constants/app_widths.dart' as app_widths;

class ManageAS extends StatefulWidget {
  const ManageAS({super.key});

  @override
  State<ManageAS> createState() => _ManageASState();
}

class _ManageASState extends State<ManageAS> {
  bool isSwitched = false;

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
              child: HeadingRow(name: app_strings.manageActiveStatus),
            ),
            ListTile(
              title: Text("show activwe status"),
              subtitle: Text("If you active"),
              trailing: Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
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

// class Profile2 extends StatefulWidget {
//   const Profile2({super.key});
//
//   @override
//   State<Profile2> createState() => _Profile2State();
// }
//
// class _Profile2State extends State<Profile2> {
//   //For switching
//   bool isSelected = false;
//
//   @override
//   Widget build(BuildContext context) {
//     var deviceMedia = MediaQuery.of(context);tends StatefulWidget
