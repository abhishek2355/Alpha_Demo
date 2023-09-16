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
    final double screenHeight = deviceMedia.size.height - deviceMedia.padding.top - deviceMedia.padding.bottom;
    final double screenWidth = deviceMedia.size.width - deviceMedia.padding.left - deviceMedia.padding.right;

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          child: ElevatedButton(
            onPressed: (){
              showModalBottomSheet(
                context: context, 
                builder: (context) {
                  return Column(
                    children: [
                      Text("Hello"),
                    ],
                  );
                  
                },);
            }, 
            child: Text('Clicked!')),
        )
      ),
    );
  }
}