import 'package:flutter/material.dart';
import 'package:stateful_splashscreen/view/homescreen/Mylist/dropdown.dart';

class Mylist extends StatefulWidget {
  const Mylist({super.key});

  @override
  State<Mylist> createState() => _MylistState();
}

class _MylistState extends State<Mylist> {
  @override
  Widget build(BuildContext context) {
    List gridImage = [
      "assets/images/list1.png",
      "assets/images/list2.png",
      "assets/images/list3.png",
      "assets/images/list4.png",
      "assets/images/list5.png",
      "assets/images/list6.png",
      "assets/images/list7.png",
      "assets/images/list8.png",
      "assets/images/list9.png",
      "assets/images/list10.png",
      "assets/images/list11.png",
      "assets/images/list12.png",
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/logos_netflix-icon.png"),
                      fit: BoxFit.fill),
                )),
            Text("My List"),
            IconButton(
              icon: Icon(Icons.arrow_drop_down),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Dropdown(),
                ));
              },
            )
          ],
        ),
      ),
      body: GridView.builder(
        itemCount: gridImage.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 3, crossAxisSpacing: 3),
        itemBuilder: (context, index) => Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(gridImage[index]), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
