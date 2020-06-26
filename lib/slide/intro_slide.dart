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
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38),
            child: Row(
              children: [
                CircleAvatar(
                  radius: MediaQuery.of(context).size.width / 8,
                  backgroundImage: AssetImage("assets/img_profile.jpg"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 36),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("박제창 ( @Dreamwalker )",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Text("Angel Robotics", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),),
                      ),
                      Text("Github: https://github.com/JAICHANGPARK", style: TextStyle(
                        fontSize: 28
                      ),)


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
                color: Colors.white
              ),),
              color: Theme.of(context).primaryColor,
              padding: EdgeInsets.all(8),
            ),
          ),
        )],
      ),
    );
  }
}
