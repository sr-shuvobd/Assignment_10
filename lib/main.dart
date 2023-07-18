import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile',
      theme: ThemeData(primaryColor: Colors.teal),
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.landscape) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(
                      "https://i.ytimg.com/vi/DY1LEvvWu8o/maxresdefault.jpg"),
                ),
                SizedBox(
                  width: 25,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 500,
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        Text(
                          "Md.Shohanur Rahman",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Tesla is accelerating the world's transition to sustainable energy with electric cars, solar and integrated renewable energy solutions for homes and ...",

                          ),
                        ),
                        Expanded(
                            child: GridView.count(
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                                crossAxisCount: 3,
                                // Number of columns
                                children: [
                                  Image.network(
                                    "https://i.ytimg.com/vi/DY1LEvvWu8o/maxresdefault.jpg",
                                    height: 120,
                                    width: 120,
                                  ),
                                  Image.network(
                                    'https://i.ytimg.com/vi/DY1LEvvWu8o/maxresdefault.jpg',
                                    height: 120,
                                    width: 120,
                                  ),
                                  Image.network(
                                    'https://i.ytimg.com/vi/DY1LEvvWu8o/maxresdefault.jpg',
                                    height: 120,
                                    width: 120,
                                  ),
                                  Image.network(
                                    'https://i.ytimg.com/vi/DY1LEvvWu8o/maxresdefault.jpg',
                                    height: 120,
                                    width: 120,
                                  ),
                                  Image.network(
                                    'https://i.ytimg.com/vi/DY1LEvvWu8o/maxresdefault.jpg',
                                    height: 120,
                                    width: 120,
                                  ),
                                  Image.network(
                                    'https://i.ytimg.com/vi/DY1LEvvWu8o/maxresdefault.jpg',
                                    height: 120,
                                    width: 120,
                                  ),
                                ])),
                      ],
                    ),
                  ),
                )
              ],
            );
          } else {
            // Return a different widget when the orientation is not landscape
            return Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: CircleAvatar(
                        radius: 100,
                        backgroundImage: NetworkImage(
                            "https://i.ytimg.com/vi/DY1LEvvWu8o/maxresdefault.jpg"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Md. Shohanur Rahman",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Tesla is accelerating the world's transition to sustainable energy with electric cars, solar and integrated renewable energy solutions for homes and ...",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Expanded(
                        child: GridView.count(
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5,
                            crossAxisCount: 3,
                            // Number of columns
                            children: [
                              Image.network(
                                'https://i.ytimg.com/vi/DY1LEvvWu8o/maxresdefault.jpg',
                                height: 120,
                                width: 120,
                              ),
                              Image.network(
                                'https://i.ytimg.com/vi/DY1LEvvWu8o/maxresdefault.jpg',
                                height: 120,
                                width: 120,
                              ),
                              Image.network(
                                'https://i.ytimg.com/vi/DY1LEvvWu8o/maxresdefault.jpg',
                                height: 120,
                                width: 120,
                              ),
                              Image.network(
                                'https://i.ytimg.com/vi/DY1LEvvWu8o/maxresdefault.jpg',
                                height: 120,
                                width: 120,
                              ),
                              Image.network(
                                'https://i.ytimg.com/vi/DY1LEvvWu8o/maxresdefault.jpg',
                                height: 120,
                                width: 120,
                              ),
                              Image.network(
                                'https://i.ytimg.com/vi/DY1LEvvWu8o/maxresdefault.jpg',
                                height: 120,
                                width: 120,
                              ),
                            ])),
                  ]),
            );
          }
        },
      ),
    );
  }
}