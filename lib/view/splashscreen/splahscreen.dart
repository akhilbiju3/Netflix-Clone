import 'package:flutter/material.dart';
import 'package:stateful_splashscreen/view/homescreen/user_name_screen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then(
        (value) => Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => Userscreen(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return isLoading == true
        ? Center(child: CircularProgressIndicator())
        : Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black,
            ),
            body: Center(
              child: SizedBox(
                  height: 56,
                  width: 207,
                  child: Image.asset(
                    "assets/images/logos_netflix.png",
                    fit: BoxFit.fitWidth,
                  )),
            ),
          );
  }
}
