import 'package:flutter/material.dart';

class Download extends StatefulWidget {
  const Download({super.key});

  @override
  State<Download> createState() => _DownloadState();
}

class _DownloadState extends State<Download> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Smart Downloads"),
        backgroundColor: Colors.black,
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Introducing Downloads For You",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19.63,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                style: TextStyle(
                    color: Colors.white, fontSize: 10.63, height: 1.5),
                textAlign: TextAlign.justify,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        CircleAvatar(
          child: Text(
            "A",
            style: TextStyle(fontSize: 50),
          ),
          radius: 80,
          backgroundColor: Color(0xff424242),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 40,
          width: MediaQuery.sizeOf(context).width * 1,
          color: Colors.blue,
          child: Center(
            child: Text("SETUP",
                style: TextStyle(
                  color: Colors.white,
                )),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          height: 33,
          width: MediaQuery.sizeOf(context).width * .7,
          color: Color(0xff424242),
          child: Center(
            child: Text("Find Something To Download",
                style: TextStyle(
                  color: Colors.white,
                )),
          ),
        )
      ]),
    );
  }
}
