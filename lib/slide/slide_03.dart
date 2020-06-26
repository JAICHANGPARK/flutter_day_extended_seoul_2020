import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Slide03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(36.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "🛡 Type Safe",
            style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 140),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text("💁‍♂️Compiler가 선언된 변수의 Type을 보장해주나 변수가 Null인 것에 대한 사항은 보장해주지 못함.",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24
              ),),
          ),
          Image.asset("assets/img_slide_03_00.png"),

        ],
      ),
    );
  }
}
