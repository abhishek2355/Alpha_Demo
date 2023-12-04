import 'package:alpha_devayani/manageActiveStatus.dart';
import 'package:alpha_devayani/manageMessages.dart';
import 'package:alpha_devayani/username3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ManageMeassages(),
    );
  }
}
