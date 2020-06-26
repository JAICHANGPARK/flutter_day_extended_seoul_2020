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
                  radius: 160,
                  backgroundImage: AssetImage("assets/img_profile.jpg"),
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
