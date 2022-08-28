import 'package:flutter/material.dart';
import 'search_page.dart';
import 'profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainPage(),
        routes: {
          SearchPage.routeName: (_) => SearchPage(),
          ProfilePage.routeName: (_) => ProfilePage(),
        });
  }
}

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("my first flutter project"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(children: [
              Image.asset("images/Graffiato.jpeg"),
              Image.network(
                  "https://www.wufoo.com/wp-content/uploads/2019/10/wufoo-online-form-builder.png"),
              Image.asset("images/Graffiato.jpeg"),
              Image.asset("images/Graffiato.jpeg"),
              ElevatedButton(
                  onPressed: (() {
                    Navigator.of(context).pushNamed(ProfilePage.routeName);
                  }),
                  child: Text("erhbevk"))
            ]),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Row(
          children: [
            Spacer(),
            IconButton(
              color: Colors.white,
              icon: Icon(
                Icons.home,
              ),
              onPressed: () {},
            ),
            Spacer(),
            IconButton(
              color: Colors.white,
              icon: Icon(
                Icons.search,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(SearchPage.routeName);
              },
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
