import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  static const routeName = "profile_page";

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int number = 1;
  int num = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            OutlinedButton(
                onPressed: () {
                  setState(() {
                    number++;
                  });
                },
                child: Text("Click Me")),
            ListView.builder(
              physics: ScrollPhysics(parent: null),
              shrinkWrap: true,
              itemCount: number,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    child: ListTile(
                  leading: Icon(Icons.person),
                  tileColor: num % 2 == 0 ? Colors.amber : Colors.blue,
                  trailing: Icon(Icons.search),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
