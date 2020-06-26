import 'package:flutter/material.dart';


class Slide0101 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                bottom: 16,
                right: 16,
                child: Placeholder(),
              ),
              Positioned(
                left: 16,
                top: 16,
                bottom: 0,
                right: 0,
                child: Placeholder(),
              ),
            ],
          ),
        ),
        Expanded(
          child: Placeholder(),
        ),
        Expanded(
          child: Placeholder(),
        )
      ],
    );
  }
}
