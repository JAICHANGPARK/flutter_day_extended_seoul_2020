import 'package:flutter/material.dart';


class Slide11 extends StatelessWidget {
  TextStyle _textStyle = TextStyle(
    fontSize: 24
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("🪐 Motivation for non-nullability in Dart.", style: TextStyle(
            fontSize: 52,fontWeight: FontWeight.bold,
          ),),
          SizedBox(height: 24,),

          SelectableText.rich((TextSpan(children: [
              TextSpan(
                text: "This is one of ",
                style: _textStyle,
              ),
            TextSpan(
              text: "the most requested ",
              style: _textStyle.copyWith(fontWeight: FontWeight.bold, fontSize: 42,
                  color: Colors.red),
            ),
            TextSpan(
              text: "features ",
              style: _textStyle,
            ),
              TextSpan(
                  text: "in developer surveys,",
                style: _textStyle.copyWith(fontWeight: FontWeight.bold, fontSize: 42,
                color: Colors.blue),
              ),
              TextSpan(
                text: "and one of the thing that developers most frequently mention missing ",
                style: _textStyle,
              ),
              TextSpan(
                text: "from other languages. \nKotlin, Swift, C#, Typescript, and numerous other languages now have,",
                style: _textStyle.copyWith(fontWeight: FontWeight.bold, fontSize: 42,
                    color: Colors.blue),
              ),
              TextSpan(
                text: " or are adding, support for non-nullability.",
                style: _textStyle,
              )
            ])),
          ),



        ],
      ),
    );
  }
}
