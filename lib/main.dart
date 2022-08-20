import 'package:flutter/material.dart';
import 'package:flutter_application/header.dart';
import 'categories.dart';
import 'hamberger_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          cardColor: Colors.white,
          appBarTheme:
              AppBarTheme(color: Colors.teal, centerTitle: true, elevation: 0),
          bottomAppBarColor: Colors.teal,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Color.fromARGB(255, 255, 203, 59))),
      home: Hamberger(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Hamberger extends StatefulWidget {
  @override
  State<Hamberger> createState() => _HambergerState();
}

class _HambergerState extends State<Hamberger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text("Deliver Me"),
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            actions: [
              IconButton(onPressed: (() {}), icon: Icon(Icons.shopping_cart))
            ],
          ),
          Header(),
          Categories(),
          HambergersList(),
          HambergersList(),
        ],
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.home),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
        child: Container(
          color: Colors.black12,
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Row(children: [
              Spacer(),
              IconButton(
                icon: Icon(Icons.add_alert),
                onPressed: () {},
                color: Colors.white,
              ),
              Spacer(),
              Spacer(),
              IconButton(
                icon: Icon(Icons.turned_in),
                onPressed: () {},
                color: Colors.white,
              ),
              Spacer(),
            ]),
          ),
        ),
      ),
    );
  }
}
