import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  int index = 0;
  int pressedNumber = 0;

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // centerTitle: false,
          title: Text("EDC App"),
          // actions: [
          //   Icon(Icons.account_circle),
          // ],
        ),
        body: Center(
          child: Column(
            children: [
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5lfKEAio-guhI7y4P4LPiYqpJSBc_hfjlTQ&usqp=CAU"),
              IconButton(
                  onPressed: () {
                    print("Pizzaria");
                    setState(() {
                      pressedNumber++;
                    });
                  },
                  icon: Icon(Icons.add_box)),
              Text(pressedNumber.toString()),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (selectedObject) {
            setState(() {
              index = selectedObject;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: 'Contacts'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_alert), label: 'alert'),
          ],
        ),
      ),
    );
  }
}
// Flutter MaterialApp & Scaffold
// Flutter Red Debug Banner
// Flutter AppBar
// Flutter Icon
// Flutter Bottom Navigation Bar
// Flutter Network Image
