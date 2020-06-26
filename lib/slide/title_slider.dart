
import 'package:f_desktop/main.dart';
import 'package:f_desktop/slide/intro_slide.dart';
import 'package:flutter/material.dart';

class SplashSlider extends StatefulWidget {
  @override
  _SplashSliderState createState() => _SplashSliderState();
}

class _SplashSliderState extends State<SplashSlider> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => IntroSlide()
//          builder: (context) => MyHomePage(title: "Flutter Day Extended Seoul")
        ));
      },
      child: Image.asset('assets/FL18-Slide-93-v01.gif', fit: BoxFit.cover,
        height: MediaQuery.of(context).size.height,
        repeat: ImageRepeat.repeat,
        width: MediaQuery.of(context).size.width,),
    );
  }
}
