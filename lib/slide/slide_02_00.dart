import 'package:flutter/material.dart';


class Slide0200 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network("https://pbs.twimg.com/media/DfD1M-BW4AAQhhZ?format=jpg&name=large",
          height: MediaQuery.of(context).size.height/1.4,),
          Text("@bunopus / https://twitter.com/bunopus/status/1004572343660838913?s=20"),
        ],
      ),
    );
  }
}
