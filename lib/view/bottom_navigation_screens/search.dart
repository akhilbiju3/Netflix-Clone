import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    List<String> searchImage = [
      "assets/images/Rectangle 21.png",
      "assets/images/searchimage2.png",
      "assets/images/Rectangle 21 (1).png",
      "assets/images/searchimage1.png",
      "assets/images/Rectangle 22 (1).png",
      "assets/images/Rectangle 21 (1).png",
      "assets/images/searchimage1.png",
      "assets/images/Rectangle 22 (1).png",
    ];

    List<String> SearchImagenames = [
      "Citiation",
      "Oiature",
      "The Setup",
      "Ozark",
      "Breaking bad ",
      "The Setup",
      "Ozark",
      "Breaking bad "
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xff424242),
                border: OutlineInputBorder(),
                hintText: 'Search for a show,movie,genre, etc',
                hintStyle: TextStyle(color: Color(0xffC4C4C4)),
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xffC4C4C4),
                ),
                suffixIcon: Icon(Icons.mic, color: Color(0xffC4C4C4)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Top Searches",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 6,
              child: ListView.separated(
                shrinkWrap: false,
                physics: ScrollPhysics(),
                itemBuilder: (context, index) => Container(
                  height: 80,
                  color: Color(0xffC4C4C4),
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 80,
                            width: 120,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(searchImage[index]),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            SearchImagenames[index],
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(140, 0, 8, 2),
                        child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/bx_bx-play-circle.png"),
                                    fit: BoxFit.cover))),
                      )
                    ],
                  ),
                ),
                itemCount: searchImage.length,
                separatorBuilder: (context, index) => Divider(height: 5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
