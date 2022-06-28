import 'package:clone_whtsapp_ui/whatsapp_home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'WhatsApp',
        theme: ThemeData(
          colorScheme: const ColorScheme.light(
              primary: Color(0xFF008069), secondary: Color(0Xff00a884)),
        ),
        home: const WhatsHome());
  }
}
