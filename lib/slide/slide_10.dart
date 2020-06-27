import 'package:flutter/material.dart';


class Slide10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("⚖️Design Principles", style: TextStyle(
            fontSize: 42,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(height: 32,),
          Text("💡 Fully Sound.", style: TextStyle(
            fontSize: 52,
            fontWeight: FontWeight.bold,
          ),),
          Text("💡 Non-nullable by default.", style: TextStyle(
            fontSize: 52,
            fontWeight: FontWeight.bold,
          ),),
          Text("💡 Code can be migrated incrementally.", style: TextStyle(
            fontSize: 52,
            fontWeight: FontWeight.bold,
          ),),

        ],
      ),
    );
  }
}
