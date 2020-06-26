import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Slide07 extends StatefulWidget {
  @override
  _Slide07State createState() => _Slide07State();
}

class _Slide07State extends State<Slide07>  with SingleTickerProviderStateMixin{
  AnimationController _animationController;
  Animation<double> _animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController = AnimationController(vsync: this, duration: Duration(
      milliseconds: 500,
    ));
    _animation = Tween(begin: 1280.0, end:24.0 ).animate(_animationController)
    ..addListener(() {
      setState(() {
      });
    });

    _animationController.forward();
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: MaterialButton(
        onPressed: () {  },
        child: Text("Null Safety", style: GoogleFonts.montserrat(
          fontSize: 120,
          color: Colors.white
        ),),
        padding: EdgeInsets.all(_animation.value),
        color: Theme.of(context).primaryColor,

      )
    );
  }
}
