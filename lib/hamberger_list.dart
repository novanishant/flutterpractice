import 'package:flutter/material.dart';

class HambergersList extends StatefulWidget {
  @override
  State<HambergersList> createState() => _HambergersListState();
}

class _HambergersListState extends State<HambergersList> {
  @override
  Widget burger1 = Container(
    height: 100,
    child: Image.asset("images/234.png"),
  );
  Widget burger2 = Container(
    height: 100,
    child: Image.asset("images/345.png"),
  );
  int items = 10;
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
          height: 240,
          margin: EdgeInsets.only(top: 20),
          child: ListView.builder(3
              itemCount: items,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                bool reverse = index.isEven;
                return Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: 20, right: index == items ? 20 : 0),
                      height: 240,
                      width: 240,
                      child: GestureDetector(
                        onTap: () {},
                        child: Card(
                          color: Colors.teal,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  "Burger",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                Row(
                                  children: [
                                    Spacer(),
                                    Text(
                                      "15.95 \$ can",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      child: Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Icon(Icons.add)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          elevation: 3,
                          margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(45),
                                  topRight: Radius.circular(45),
                                  bottomLeft: Radius.circular(45),
                                  bottomRight: Radius.circular(15))),
                        ),
                      ),
                    ),
                    Positioned(
                        top: reverse ? 50 : 50,
                        child: GestureDetector(
                          onTap: () {},
                          child: reverse ? burger1 : burger2,
                        ))
                  ],
                );
              }))),
    );
  }
}
