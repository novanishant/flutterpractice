import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          centerTitle: true,
          title: Text("My Flutter App"),
          backgroundColor: Colors.pink,
        ),
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.coffee_rounded,
                        size: 30,
                        color: Colors.white,
                      ),
                      Text(
                        "Welcome",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(child: Image.asset("images/3.png")),
                  SizedBox(
                    height: 30,
                  ),
                  OutlinedButton(
                    onPressed: (() {}),
                    child: Text("Sign In"),
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.white, width: 3),
                        primary: Colors.white,
                        minimumSize: Size(200, 40)),
                  ),
                  TextButton(
                      onPressed: (() {}),
                      style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(200, 40)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white)),
                      child: Text(
                        "Register",
                        style: TextStyle(
                          color: Colors.amber,
                          backgroundColor: Colors.white,
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
