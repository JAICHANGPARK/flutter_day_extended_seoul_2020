import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Slide14 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
          flex: 1,
          child: Text(
            "late",
            style: GoogleFonts.firaCode(fontSize: 64, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          flex: 6,
          child: Row(
            children: [
              Expanded(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dart",
                          style: GoogleFonts.firaCode(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "🚀 late ",
                          style: GoogleFonts.firaCode(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Divider(),
                        Text(
                          "The late keyword has two effects:",
                          style: TextStyle(fontSize: 22),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "1. The analyzer doesn’t require you to immediately initialize a late variable to a non-null value.",
                          style: TextStyle(fontSize: 22),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "2. The runtime lazily initializes the late variable. ",
                          style: TextStyle(fontSize: 22),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Kotlin",
                          style: GoogleFonts.firaCode(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Divider(),
                        Text(
                          "🚀 lateinit ",
                          style: GoogleFonts.firaCode(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "var(mutable)만 사용가능.",
                          style: GoogleFonts.firaCode(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Divider(),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "🚀 lazy ",
                          style: GoogleFonts.firaCode(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "val(immutable)만 사용가능.",
                          style: GoogleFonts.firaCode(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Swift",
                          style: GoogleFonts.firaCode(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Divider(),
                        Text(
                          "🚀 lazy ",
                          style: GoogleFonts.firaCode(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "var(immutable)과 함께 사용.",
                          style: GoogleFonts.firaCode(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
