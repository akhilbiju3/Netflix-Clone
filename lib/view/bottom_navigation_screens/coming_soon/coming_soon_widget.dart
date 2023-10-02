import 'package:flutter/material.dart';
import 'package:stateful_splashscreen/view/video%20player/video.dart';

class Listviewcoming extends StatelessWidget {
  const Listviewcoming({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            child: Container(
              height: 220,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/coming_soon1.png"),
                      fit: BoxFit.cover)),
            ),
            onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Youtubevideo())),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                    Text(
                      "Remind Me",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                    Text(
                      "Share",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Season 1 Coming December 14",
                    style: TextStyle(color: Colors.white)),
                SizedBox(
                  height: 5,
                ),
                Text("Castle & Castle",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 5,
                ),
                Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                    style: TextStyle(color: Colors.white, fontSize: 10)),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Steamy",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold)),
                    Icon(
                      Icons.circle_rounded,
                      color: Colors.white,
                      size: 9,
                    ),
                    Text("Soapy",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold)),
                    Icon(
                      Icons.circle_rounded,
                      color: Colors.white,
                      size: 9,
                    ),
                    Text("Slow Burn",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold)),
                    Icon(
                      Icons.circle_rounded,
                      color: Colors.white,
                      size: 9,
                    ),
                    Text("Suspenseful",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold)),
                    Icon(
                      Icons.circle_rounded,
                      color: Colors.white,
                      size: 9,
                    ),
                    Text("Teen",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold)),
                    Icon(
                      Icons.circle_rounded,
                      color: Colors.white,
                      size: 9,
                    ),
                    Text("Mystery",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold)),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
