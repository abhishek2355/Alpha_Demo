import 'package:alpha_devayani/profileAndPrivacy2.dart';
import 'package:alpha_devayani/recent_Serach_page.dart';
import 'package:alpha_devayani/settings_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:alpha_devayani/result_page.dart';
import 'package:alpha_devayani/search_page.dart';
// import 'package:alpha_devayani/singlePostImage.dart';

import 'package:flutter/material.dart';

import 'notification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Profile2(),
    );
  }
}
