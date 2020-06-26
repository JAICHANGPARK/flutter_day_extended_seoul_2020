import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';

class IntroSlide extends StatefulWidget {
  @override
  _IntroSlideState createState() => _IntroSlideState();
}

class _IntroSlideState extends State<IntroSlide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Day Extended Seoul 2020"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.width / 9,
                      backgroundImage: AssetImage("assets/img_profile.jpg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 84),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "이제 Null 안전하게 지켜줄게",
                            style: GoogleFonts.nanumGothic(
                              fontWeight: FontWeight.bold,
                              fontSize: 64,
                            ),
                          ),
                          SizedBox(
                            height: 64,
                          ),
                          Text(
                            "박제창 (@Dreamwalker)",
                            style: GoogleFonts.nanumGothic(
                              fontSize: 26,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 0),
                            child: Text(
                              "Angel Robotics",
                              style: GoogleFonts.nanumGothic(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Text(
                            "https://github.com/JAICHANGPARK",
                            style: GoogleFonts.nanumGothic(fontSize: 20),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                  child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
//                    builder: (context) => IntroSlide()
                      builder: (context) => MyHomePage(title: "Flutter Day Extended Seoul 2020")));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 2, spreadRadius: 3)]),
                  height: 84,
                  width: 84,
                  child: Center(
                    child: Icon(
                      Icons.play_arrow,
                      size: 42,
                    ),
                  ),
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}
