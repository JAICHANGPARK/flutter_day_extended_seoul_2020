import 'dart:async';

import 'package:f_desktop/slide/slide_page_00.dart';
import 'package:f_desktop/slide/title_slider.dart';
import 'package:f_desktop/utils/countdown_timer.dart';
import 'package:flutter/material.dart';

import 'slide/intro_slide.dart';
import 'slide/slide_01.dart';
import 'slide/slide_02.dart';
import 'slide/slide_03.dart';
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
  int _pageIndex = 0;
  Timer _timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {});
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
                  style: TextStyle(fontSize: 24),
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
            IndexedStack(
              index: _pageIndex,
              children: [
                Slide01(),
                Slide02(),
                Slide03(),
                Slide00(),
              ],
            ),
            Positioned(
              right: 16,
              bottom: 16,
              child: Row(
                children: [
                  _pageIndex != 0
                      ? FloatingActionButton(
                          onPressed: () {
                            _pageIndex--;
                            if (_pageIndex <= 0) {
                              _pageIndex = 0;
                            }
                            setState(() {});
                          },
                          tooltip: 'pREV',
                          heroTag: "Prev Page",
                          child: Icon(Icons.arrow_back),
                        )
                      : Container(),
                  SizedBox(
                    width: 16,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      _pageIndex++;
                      if (_pageIndex > 3) {
                        _pageIndex = 3;
                      }
                      setState(() {});
                    },
                    heroTag: "next",
                    tooltip: 'Next Page',
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
