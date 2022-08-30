// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Chat UI',
      theme: ThemeData(
          primarySwatch: Colors.red,
          
          // colorScheme: ColorScheme(secondary: Color(0xFFFEF9EB)),
          brightness: Brightness.light),
      home: HomeScreen(),
    );
  }
}
