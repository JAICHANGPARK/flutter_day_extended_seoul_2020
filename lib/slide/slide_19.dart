import 'package:flutter/material.dart';

class Slide19 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("현재 사용 가능 채널", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 64,
          ),),
          Text('Dart’s Beta channel\nTech preview channel에서 사용 가능합니다.',
          style: TextStyle(
            fontSize: 42
          ),),

        ],
      ),
    );
  }
}
