import 'package:flutter/material.dart';
import 'package:stateful_splashscreen/view/bottom_navigation_screens/coming_soon/coming_soon_widget.dart';

class Comingsoon extends StatefulWidget {
  const Comingsoon({super.key});

  @override
  State<Comingsoon> createState() => _ComingsoonState();
}

class _ComingsoonState extends State<Comingsoon> {
  @override
  Widget build(BuildContext context) {
    List listviewImage = [
      "assets/images/Rectangle 20.png",
      "assets/images/Rectangle 21 (2).png"
    ];

    List listviewnames = ["EL Chapo", "Peaky Blinders"];
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/Group 49.png"),
                      ),
                    ),
                  ),
                  Text(
                    "Notifications",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  )
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Container(
                height: 70,
                color: Color(0xff424242),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: Container(
                        height: 60,
                        width: 120,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(listviewImage[index]),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "New Arrival",
                            style: TextStyle(fontSize: 13, color: Colors.white),
                          ),
                          Text(listviewnames[index],
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white)),
                          Text("Nov 6",
                              style:
                                  TextStyle(fontSize: 9, color: Colors.white)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              itemCount: listviewImage.length,
            ),
            SizedBox(
              height: 10,
            ),
            Listviewcoming(),
            SizedBox(
              height: 10,
            ),
            Listviewcoming(),
            SizedBox(
              height: 10,
            ),
            Listviewcoming(),
          ],
        ),
      ),
    );
  }
}
