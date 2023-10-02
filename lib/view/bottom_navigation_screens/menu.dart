import 'package:flutter/material.dart';
import 'package:stateful_splashscreen/utils/color_constants/colors.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    List<String> image1 = [
      "assets/images/Rectangle 2.png",
      "assets/images/Rectangle 3.png",
      "assets/images/Rectangle 4.png",
      "assets/images/Rectangle 5.png",
      "assets/images/Group 82.png"
    ];

    List<String> profileName = [
      "Akhil",
      "Abbas",
      "Hamrash",
      "Abhishek",
      "Add Profile"
    ];
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * .12,
                color: Colors.black,
                child: ListView.builder(
                  itemBuilder: (context, index) => Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 78,
                            width: 70,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(image1[index]),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            profileName[index],
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: image1.length,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 17,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Manage Profile",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .39,
              width: MediaQuery.of(context).size.width * 1,
              color: Color(0xff424242),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.message,
                          size: 20,
                          color: white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Tell Friends about Netflix",
                          style: TextStyle(
                              fontSize: 20,
                              color: white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                        style: TextStyle(
                          color: white,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Terms & Conditions",
                        style: TextStyle(
                          color: white,
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          color: Colors.black,
                          width: MediaQuery.of(context).size.width * .7,
                          height: 30,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Copy Link"),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/logos_whatsapp.png"))),
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/facebook.png"))),
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage("assets/images/Gmail-logo 1.png"),
                            ),
                            color: white,
                          ),
                        ),
                        Column(
                          children: [
                            Icon(Icons.more_horiz, color: white),
                            Text(
                              "More",
                              style: TextStyle(color: white),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colors.black,
                      width: MediaQuery.of(context).size.width * 1,
                      height: 50,
                      child: Row(
                        children: [
                          Icon(
                            Icons.done,
                            color: white,
                          ),
                          Text(
                            "My List",
                            style: TextStyle(color: white),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "App Settings",
                    style: TextStyle(color: white, fontSize: 16),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Account",
                    style: TextStyle(color: white, fontSize: 16),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Help",
                    style: TextStyle(color: white, fontSize: 16),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Sign Out",
                    style: TextStyle(color: white, fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
