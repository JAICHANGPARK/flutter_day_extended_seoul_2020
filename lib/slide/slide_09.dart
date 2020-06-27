import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Slide09 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Image.asset("assets/img_slide_09_00.png", height: MediaQuery.of(context)
          .size.height / 1.3,)),
        Text("https://nullsafety.dartpad.dev/", style: TextStyle(
          fontSize: 25,
        ),),
      ],
    );
  }
}
