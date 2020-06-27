import 'package:decoding_text_effect/decoding_text_effect.dart';
import 'package:flutter/material.dart';
import 'package:flutter_particles/particles.dart';

class Slide01 extends StatefulWidget {
  @override
  _Slide01State createState() => _Slide01State();
}

class _Slide01State extends State<Slide01> with SingleTickerProviderStateMixin{
  AnimationController _animationController;
  Animation<double> _animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(vsync: this, duration: Duration(seconds:1));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController)..addListener(() {
      setState(() {
      });
    });
    _animationController.forward();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Particles(
          30, // Number of Particles
          Colors.blue[300], // Color of Particles
        ),
        Center(
          child: DecodingTextEffect(
            "Null Safety",
            decodeEffect: DecodeEffect.all,
            textStyle: TextStyle(fontSize: 140, fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          left: -24,
          bottom: -60,
          child: ScaleTransition(
              scale: _animation,
              child: Image.asset("assets/dash.png")),
        )
      ],
    );
  }
}
