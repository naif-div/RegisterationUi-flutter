import 'package:flutter/material.dart';
import 'package:login_ui/RegistrationUi.dart';
import 'package:login_ui/listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:mappItems(),
    );
  }
}
