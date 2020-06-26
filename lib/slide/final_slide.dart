import 'package:flutter/material.dart';

class FinalSlide extends StatefulWidget {
  @override
  _FinalSlideState createState() => _FinalSlideState();
}

class _FinalSlideState extends State<FinalSlide> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Image.asset(
            'assets/FL18_Slide_97_v01.gif',
            height: MediaQuery.of(context).size.height / 1.2,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Text(
          "Slide Link : https://github.com/JAICHANGPARK/flutter_day_extended_seoul_2020",
          style: TextStyle(fontSize: 21),
        )
      ],
    );
  }
}
