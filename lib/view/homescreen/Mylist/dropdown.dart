import 'package:flutter/material.dart';
import 'package:stateful_splashscreen/utils/color_constants/colors.dart';
import 'package:stateful_splashscreen/view/Bottom_navigation/bottomnavigation.dart';
import 'package:stateful_splashscreen/view/homescreen/TV%20Shows/tvshows.dart';
import 'package:stateful_splashscreen/view/homescreen/movies_screen/movies.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({super.key});

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => Bottomnavigation(),
                    ));
                  },
                  child: Text("All",
                      style: TextStyle(fontSize: 15, color: Colors.white))),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => TVshows()));
                  },
                  child: Text("TV Shows",
                      style: TextStyle(fontSize: 15, color: Colors.white))),
              TextButton(
                  onPressed: () {},
                  child: Text("Movies",
                      style: TextStyle(fontSize: 15, color: Colors.white))),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Movies()));
                  },
                  child: Text("My List",
                      style: TextStyle(fontSize: 15, color: Colors.white))),
              SizedBox(
                height: 200,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => Bottomnavigation()));
                },
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: white,
                  child: Icon(
                    Icons.close,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
