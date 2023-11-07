import 'package:alpha_devayani/result_page.dart';
import 'package:alpha_devayani/singlePostImage.dart';
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
      home: SinglePostImage(),
    );
  }
}
