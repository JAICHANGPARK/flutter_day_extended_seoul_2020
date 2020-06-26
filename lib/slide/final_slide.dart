import 'package:flutter/material.dart';


class FinalSlide extends StatefulWidget {
  @override
  _FinalSlideState createState() => _FinalSlideState();
}

class _FinalSlideState extends State<FinalSlide> {
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/FL18_Slide_97_v01.gif', fit: BoxFit.cover,
      height: MediaQuery.of(context).size.height,
      repeat: ImageRepeat.repeat,
      width: MediaQuery.of(context).size.width,);
  }
}
