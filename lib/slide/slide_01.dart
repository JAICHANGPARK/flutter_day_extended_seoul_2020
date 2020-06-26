import 'package:decoding_text_effect/decoding_text_effect.dart';
import 'package:flutter/material.dart';
import 'package:flutter_particles/particles.dart';

class Slide01 extends StatefulWidget {
  @override
  _Slide01State createState() => _Slide01State();
}

class _Slide01State extends State<Slide01> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Particles(
          30, // Number of Particles
          Colors.blue, // Color of Particles
        ),
        Center(
          child: DecodingTextEffect(
            "Null Safety",
            decodeEffect: DecodeEffect.fromStart,
            textStyle: TextStyle(fontSize: 120),
          ),
        ),
        Positioned(
          left: 0,
          bottom: -60,
          child: Image.asset("assets/dash.png"),
        )
      ],
    );
  }
}
