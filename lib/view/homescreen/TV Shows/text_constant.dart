import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Textcircular extends StatelessWidget {
  final String title;
   Textcircular({super.key, required this.title});

  List<String> cirname = [
    "assets/images/Ellipse 2.png",
    "assets/images/Ellipse 3.png",
    "assets/images/Ellipse 4.png",
    "assets/images/Ellipse 4.png",
    "assets/images/Ellipse 4.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            title,
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
      ],
    );
  }
}
