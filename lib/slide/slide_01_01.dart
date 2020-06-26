import 'package:flutter/material.dart';

class Slide0101 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Stack(
              children: [
                Positioned(
                  left: 16,
                  top: 16,
                  bottom: 0,
                  right: 0,
                  child: Card(
                    color: Colors.blue,
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  bottom: 16,
                  right: 16,
                  child: Card(
                    elevation: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Stack(
              children: [
                Positioned(
                  left: 16,
                  top: 16,
                  bottom: 0,
                  right: 0,
                  child: Card(
                    color: Colors.blue,
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  bottom: 16,
                  right: 16,
                  child: Card(
                    elevation: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Stack(
              children: [
                Positioned(
                  left: 16,
                  top: 16,
                  bottom: 0,
                  right: 0,
                  child: Card(
                    color: Colors.blue,
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  bottom: 16,
                  right: 16,
                  child: Card(
                    elevation: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
