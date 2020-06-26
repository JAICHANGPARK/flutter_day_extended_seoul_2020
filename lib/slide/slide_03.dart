import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Slide03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(36.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("🛡 Type Safe", style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            fontSize: 140
          ),),

          Text("")

        ],
      ),
    );
  }
}
