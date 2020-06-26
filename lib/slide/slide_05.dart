import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Slide05 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("💁‍♂️ Dart Native includes both a Dart VM with JIT (just-in-time) compilation and an AOT (ahead-of-time) compiler for producing machine code.",
            style: TextStyle(
              fontSize: 22
            ),),

            SvgPicture.network(
              "https://dart.dev/assets/Dart-platforms-29d94ccaaea4bdd0b2bcf6e37084bae890eb8bae482baf3b0894e0b99a17b8d7.svg",
              height: MediaQuery.of(context).size.height / 1.4,
            ),
          ],
        ),
      ),
    );
  }
}
