import 'package:flutter/material.dart';
import 'package:stateful_splashscreen/view/homescreen/TV%20Shows/text_constant.dart';
import 'package:stateful_splashscreen/view/homescreen/carousal.dart';
import 'package:stateful_splashscreen/view/homescreen/homescreen_popular_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Carousalslider(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    Text("MyList",
                        style: TextStyle(fontSize: 15, color: Colors.white))
                  ],
                ),
                Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.play_arrow), Text("Play")],
                  ),
                ),
                Column(
                  children: [
                    Icon(Icons.info, color: Colors.white),
                    Text("Info",
                        style: TextStyle(fontSize: 15, color: Colors.white))
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Textcircular(
              title: 'Preview',
            ),
            SizedBox(
              height: 10,
            ),
            Constantwidgets(
              titlecontainer: "Trending Now",
            ),
            SizedBox(
              height: 10,
            ),
            Constantwidgets(
              titlecontainer: "Continue Watching For Emenalo",
            ),
            SizedBox(
              height: 10,
            ),
            Constantwidgets(
              titlecontainer: "Recently Watched",
            ),
          ],
        ),
      ),
    );
  }
}
