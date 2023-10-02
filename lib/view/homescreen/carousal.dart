import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:stateful_splashscreen/view/homescreen/Mylist/mylist.dart';
import 'package:stateful_splashscreen/view/homescreen/TV%20Shows/tvshows.dart';
import 'package:stateful_splashscreen/view/homescreen/movies_screen/movies.dart';

class Carousalslider extends StatefulWidget {
  const Carousalslider({super.key});

  @override
  State<Carousalslider> createState() => _CarousalsliderState();
}

class _CarousalsliderState extends State<Carousalslider> {
  GlobalKey<CarouselSliderState> sliderKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    List slider = [
      "assets/images/Rectangle 26.png",
      "assets/images/tvshows.png",
      "assets/images/movies.png"
    ];

    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width * 1,
          child: CarouselSlider.builder(
              key: sliderKey,
              itemCount: slider.length,
              itemBuilder: (context, index, realIndex) {
                return Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(slider[index]), fit: BoxFit.fill),
                  ),
                );
              },
              options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: 1,
                  height: MediaQuery.of(context).size.height * 0.5,
                  scrollDirection: Axis.horizontal)),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/logos_netflix-icon.png"),
                            fit: BoxFit.cover),
                      )),
                  InkWell(
                    child: Text(
                      "TV Shows",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => TVshows(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Text("Movies",
                        style: TextStyle(fontSize: 15, color: Colors.white)),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Movies(),
                      ));
                    },
                  ),
                  InkWell(
                    child: Text("My List",
                        style: TextStyle(fontSize: 15, color: Colors.white)),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Mylist(),
                      ));
                    },
                  ),
                ],
              ),
              Text("#2 Nigiria Today",
                  style: TextStyle(fontSize: 15, color: Colors.white)),
            ],
          ),
        ),
      ],
    );
  }
}
