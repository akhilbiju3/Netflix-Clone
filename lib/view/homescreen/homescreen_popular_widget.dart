import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Constantwidgets extends StatelessWidget {
  final String titlecontainer;
  Constantwidgets({super.key, required this.titlecontainer});

 List<String> images = [
      "assets/images/Rectangle 14.png",
      "assets/images/Rectangle 15.png",
      "assets/images/Rectangle 16.png",
      "assets/images/Rectangle 14.png",
      "assets/images/Rectangle 15.png",
    ];
  @override
  Widget build(BuildContext context) {
   

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(titlecontainer,
              style: TextStyle(fontSize: 20, color: Colors.white)),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * .2,
          child: ListView.builder(
            itemBuilder: (context, index) => Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 120,
                  width: 90,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(images[index]))),
                )
              ],
            ),
            itemCount: images.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
