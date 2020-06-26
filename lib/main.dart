import 'dart:async';

import 'package:f_desktop/slide/slide_page_00.dart';
import 'package:f_desktop/slide/title_slider.dart';
import 'package:f_desktop/utils/countdown_timer.dart';
import 'package:flutter/material.dart';

import 'slide/final_slide.dart';
import 'slide/intro_slide.dart';
import 'slide/slide_01.dart';
import 'slide/slide_01_00.dart';
import 'slide/slide_01_01.dart';
import 'slide/slide_02.dart';
import 'slide/slide_02_00.dart';
import 'slide/slide_03.dart';
import 'slide/slide_04.dart';
import 'slide/slide_04_01.dart';
import 'slide/slide_05.dart';
import 'slide/slide_06.dart';
import 'slide/slide_page_01_test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Day Extended Seoul 2020',
      theme: ThemeData.light(),
      home: SplashSlider(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final FocusNode _focusNode = FocusNode();
  PageController _pageController;
  int _pageIndex = 0;
  Timer _timer;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {});
    _pageController = PageController(initialPage: _pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 64),
            child: CountdownFormatted(
              builder: (BuildContext ctx, String remaining) {
                return Center(
                    child: Text(
                  remaining,
                  style: TextStyle(fontSize: 32),
                )); // 01:00:00
              },
              duration: Duration(minutes: 20),
            ),
          )
        ],
      ),
      body: RawKeyboardListener(
        focusNode: _focusNode,
        onKey: (event) {
          print(event);
          print(_pageIndex);
          if (event.logicalKey.keyLabel == "[") {
          } else if (event.logicalKey.keyLabel == "]") {}
        },
        child: Stack(
          children: [
            PageView(
              onPageChanged: (newValue){
                setState(() {
                  _pageIndex = newValue;
                });
              },
              controller: _pageController,
              scrollDirection: Axis.vertical,
              children: [
                Slide01(),
                Slide0100(),
                Slide0101(),
                Slide0200(),
                Slide02(),
                Slide03(),
                Slide04(),
                Slide0401(),
                Slide05(),
                Slide06(),
                FinalSlide(),
              ],
            ),
//            IndexedStack(
//              index: _pageIndex,
//              children: [
//                Slide01(),
//                Slide0101(),
//                Slide0200(),
//                Slide02(),
//                Slide03(),
//                Slide00(),
//                FinalSlide(),
//              ],
//            ),
            Positioned(
              right: 16,
              bottom: 16,
              child: Row(
                children: [
                  _pageIndex != 0
                      ? FloatingActionButton(
                          onPressed: () {
//                            _pageIndex--;
//                            if (_pageIndex <= 0) {
//                              _pageIndex = 0;
//                            }
//                            setState(() {});

                            _pageController.previousPage(duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
                          },
                          tooltip: 'Prev Slide',
                          heroTag: "Prev Page",
                          child: Icon(Icons.arrow_back),
                        )
                      : Container(),
                  SizedBox(
                    width: 16,
                  ),
                  FloatingActionButton(
                    onPressed: () {

                      _pageController.nextPage(duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
//                      _pageIndex++;
//                      if (_pageIndex > 10) {
//                        _pageIndex = 10;
//                      }
//                      setState(() {});
                    },
                    heroTag: "next ",
                    tooltip: 'Next Slide',
                    child: Icon(Icons.arrow_forward),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
