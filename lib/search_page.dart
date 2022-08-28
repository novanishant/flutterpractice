import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  static const routeName = "search_page";

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _controller = TextEditingController();

  String UserData = "";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => TextFormField(
                controller: _controller,
              )),
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
            ElevatedButton(
                onPressed: (() {
                  setState(() {
                    UserData = _controller.text;
                  });
                }),
                child: Text(UserData)),
            Spacer(),
            IconButton(
              color: Colors.white,
              icon: Icon(
                Icons.search,
              ),
              onPressed: () {},
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
