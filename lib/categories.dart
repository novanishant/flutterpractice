import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int currentSelectedItem = 0;
  @override
  Widget build(BuildContext context) {
    int item = 10;
    return SliverToBoxAdapter(
      child: Container(
        height: 100,
        margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: item,
          itemBuilder: (context, index) => Stack(children: [
            Column(
              children: [
                Container(
                  height: 90,
                  width: 90,
                  margin: EdgeInsets.only(left: item == 0 ? 0 : 10, right: 10),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentSelectedItem = index;
                      });
                    },
                    child: Card(
                      color: currentSelectedItem == index
                          ? Colors.black.withOpacity(0.7)
                          : Colors.white,
                      child: Icon(
                        Icons.fastfood,
                        color: currentSelectedItem == index
                            ? Colors.white
                            : Colors.black.withOpacity(0.7),
                      ),
                      elevation: 3,
                      margin: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 0,
              child: Container(
                  margin: EdgeInsets.only(left: item == 0 ? 0 : 10, right: 10),
                  width: 90,
                  child: Row(
                    children: [Spacer(), Text("burger"), Spacer()],
                  )),
            ),
          ]),
        ),
      ),
    );
  }
}
