import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> ProfileImages = [
    "images/images8.jpeg",
    "images/images7.jpeg",
    "images/images6.jpeg",
    "images/images5.jpeg",
    "images/images4.jpeg",
    "images/images3.jpeg",
    "images/images2.jpeg",
    "images/images1.jpeg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "images/Instagram_Logo_2016.png",
          height: 40,
        ),
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: Icon(Icons.add_circle_outline),
          ),
          IconButton(
            onPressed: (() {}),
            icon: Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: (() {}),
            icon: Icon(Icons.chat_bubble_outline),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  8,
                  (index) => Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage(
                                  "images/story.png",
                                ),
                                child: CircleAvatar(
                                  radius: 32,
                                  backgroundImage: AssetImage(
                                    ProfileImages[index],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Profile_image",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black87),
                              )
                            ],
                          ),
                        ),
                      )),
            ),
          ),
          Divider(),
          Column(
            children: List.generate(
                8,
                (index) => Column(
                      children: [Row(children: [Container()],)],
                    )),
          ),
        ],
      )),
    );
  }
}
