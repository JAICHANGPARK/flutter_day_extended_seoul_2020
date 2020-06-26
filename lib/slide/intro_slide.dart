import 'package:flutter/material.dart';

class IntroSlide extends StatefulWidget {
  @override
  _IntroSlideState createState() => _IntroSlideState();
}

class _IntroSlideState extends State<IntroSlide> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                CircleAvatar(
                  radius: MediaQuery.of(context).size.width / 10,
                  backgroundImage: AssetImage("assets/img_profile.jpg"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("박제창 / @Dreamwalker"),
                      Text("Angel Robotics"),
                      Text("https://github.com/JAICHANGPARK")


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
            child: MaterialButton(
              onPressed: (){},
              child: Text("시작하기",style: TextStyle(
                fontSize: 24,
              ),),
              color: Theme.of(context).buttonColor,
              padding: EdgeInsets.all(16),
            ),
          ),
        )],
      ),
    );
  }
}
