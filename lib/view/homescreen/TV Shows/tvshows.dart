import 'package:flutter/material.dart';
import 'package:stateful_splashscreen/view/homescreen/homescreen_popular_widget.dart';

class TVshows extends StatefulWidget {
  const TVshows({super.key});

  @override
  State<TVshows> createState() => _TVshowsState();
}

class _TVshowsState extends State<TVshows> {
  List<String> cirname = [
    "assets/images/Ellipse 2.png",
    "assets/images/Ellipse 3.png",
    "assets/images/Ellipse 4.png",
    "assets/images/Ellipse 4.png",
    "assets/images/Ellipse 4.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/tvshows.png"),
                    fit: BoxFit.fill),
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/logos_netflix-icon.png"),
                                  fit: BoxFit.fill),
                            )),
                        InkWell(
                          child: Text(
                            "TV Shows",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => TVshows(),
                            ));
                          },
                        ),
                        InkWell(
                          child: Text("All genres",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white)),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => TVshows(),
                            ));
                          },
                        ),
                      ],
                    ),
                    Text("#2 Nigiria Today",
                        style: TextStyle(fontSize: 15, color: Colors.white)),
                  ],
                ),
              ),
            ),
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
                  width: 70,
                  color: Colors.white,
                  child: Row(
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
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Previews",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * .1,
              child: ListView.builder(
                itemBuilder: (context, index) => Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage(cirname[index]),
                      radius: 45,
                      backgroundColor: Colors.blue,
                    ),
                  ],
                ),
                itemCount: cirname.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("Continue Watching for Emenalo",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
            ),
            Constantwidgets(
              titlecontainer: 'Trending Now',
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("Popular on Netflix",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
            ),
            Constantwidgets(titlecontainer: 'Continue Watching for Emenalo'),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("Trending Now",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
            ),
            Constantwidgets(titlecontainer: 'Recommended for you'),
          ],
        ),
      ),
    );
  }
}
