import 'dart:convert';
import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:decoding_text_effect/decoding_text_effect.dart';
import 'package:flutter/material.dart';
import 'package:geopattern_flutter/geopattern_flutter.dart';
import 'package:geopattern_flutter/patterns/sine_waves.dart';
import 'package:google_fonts/google_fonts.dart';

class ThankyouSlide extends StatefulWidget {
  @override
  _ThankyouSlideState createState() => _ThankyouSlideState();
}

class _ThankyouSlideState extends State<ThankyouSlide> with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;

  List<String> _img = [
    "assets/final/img_00.png",
    "assets/final/img_01.png",
    "assets/final/img_02.png",
    "assets/final/img_03.png",
    "assets/final/img_04.png",
    "assets/final/img_05.png",
    "assets/final/img_06.png",
    "assets/final/img_07.png",
    "assets/final/img_08.png",
    "assets/final/img_09.png",
  ];

  List<String> _imgList = [];

  ScrollController _scrollController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        print(_scrollController.offset);
      });
    for (int i = 0; i < 100; i++) {
      _imgList.add(_img[Random().nextInt(_img.length - 1)]);
    }

    _animationController = AnimationController(vsync: this, duration: Duration(seconds: 120));
    _animation = Tween(begin: 0.0, end: 1236.0).animate(_animationController)
      ..addListener(() {
        setState(() {
          _scrollController.jumpTo(_animation.value);
        });
      });

    _animationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: GridView.builder(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
              itemCount: _imgList.length,
              itemBuilder: (context, index) {
                return Card(child: Image.asset(_imgList[index]));
              }),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black.withOpacity(0.3),
        ),
        Center(
          child: DecodingTextEffect(
            "Thank You",
            decodeEffect: DecodeEffect.all,
            textStyle: TextStyle(fontSize: 160, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ],
    );
//    return Padding(
//      padding: const EdgeInsets.symmetric(horizontal: 24),
//      child: Row(
//        children: [
//          Expanded(child: Image.network("https://1.bp.blogspot.com/-6pDrDpYKUCg/Xor0RTjWgtI/AAAAAAABYL0/-y57hak6vKEhfrtHwOashooPxNMUaYJ8ACNcBGAsYHQ/s400/online_kaigi_man.png")),
//          Expanded(
//            flex: 3,
//            child: Center(
//              child: DecodingTextEffect(
//                "Thank You",
//                decodeEffect: DecodeEffect.all,
//                textStyle: TextStyle(fontSize: 140, fontWeight: FontWeight.bold),
//              ),
//            ),
//          ),
//          Expanded(child: Image.network("https://1.bp.blogspot.com/-8-o0j4R1RNY/Xor0SBXlEXI/AAAAAAABYL8/Kr6jXb2sYo4OPnAtiesh1LXNSIpjPW_ogCNcBGAsYHQ/s400/online_kaigi_woman.png"))
//        ],
//      ),
//    );
  }
}
