import 'package:flutter/material.dart';
import 'package:stateful_splashscreen/view/Bottom_navigation/bottomnavigation.dart';

class Userscreen extends StatefulWidget {
  const Userscreen({super.key});

  @override
  State<Userscreen> createState() => _UserscreenState();
}

class _UserscreenState extends State<Userscreen> {
  @override
  Widget build(BuildContext context) {
    List<String> image = [
      "assets/images/Rectangle 2.png",
      "assets/images/Rectangle 3.png",
      "assets/images/Rectangle 4.png",
      "assets/images/Rectangle 5.png",
      "assets/images/Group 1.png"
    ];

    List<String> text = [
      "Akhil",
      "Abbas",
      "Hamrash",
      "Abhishek",
      "Add Profile"
    ];

    List<Navigator> navi = [];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: SizedBox(
          height: 138,
          width: 100.2,
          child: Image.asset("assets/images/logos_netflix.png"),
        ),
        actions: [
          Image.asset("assets/images/bx_bxs-pencil.png"),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
            itemCount: image.length,
            itemBuilder: (context, index) => Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Bottomnavigation()));
                  },
                  child: Container(
                      height: 100,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(image[index]),
                        ),
                      )),
                ),
                Text(
                  text[index],
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
