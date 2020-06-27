import 'dart:async';
import 'package:flutter_day_seoul/slide/title_slider.dart';
import 'package:flutter_day_seoul/utils/countdown_timer.dart';
import 'package:flutter/material.dart';
import 'slide/final_slide.dart';
import 'slide/slide_01.dart';
import 'slide/slide_01_00.dart';
import 'slide/slide_01_01.dart';
import 'slide/slide_02.dart';
import 'slide/slide_02_00.dart';
import 'slide/slide_03.dart';
import 'slide/slide_04.dart';
import 'slide/slide_04_01.dart';
import 'slide/slide_04_02.dart';
import 'slide/slide_04_03.dart';
import 'slide/slide_04_04.dart';
import 'slide/slide_04_05.dart';
import 'slide/slide_05.dart';
import 'slide/slide_06.dart';
import 'slide/slide_07.dart';
import 'slide/slide_07_00.dart';
import 'slide/slide_08.dart';
import 'slide/slide_09.dart';
import 'slide/slide_10.dart';
import 'slide/slide_11.dart';
import 'slide/slide_12.dart';
import 'slide/thank_you_slide.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
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
          if(event.logicalKey.keyId == 0x100070051){
            _pageController.nextPage(duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
          }else if(event.logicalKey.keyId == 0x100070052){
            if(_pageIndex != 0)
            _pageController.previousPage(
                duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
          }
        },


        child: Stack(
          children: [
            PageView(
              onPageChanged: (newValue) {
                print(newValue);
                setState(() {
                  _pageIndex = newValue;
                });
              },
              controller: _pageController,
              scrollDirection: Axis.vertical,
              children: [
                Slide01(),
                Slide0101(),
                Slide0200(),
                Slide02(),
                Slide03(),
                Slide04(),
                Slide0401(),
                Slide0402(),
                Slide0403(),
                Slide0404(),
                Slide0405(),
                Slide08(),
                Slide07(), // Null safety
                Slide0100(),
                Slide11(),
                Slide10(),
                Slide05(),
                Slide06(),
                Slide0700(),
                Slide09(),
                Slide12(),
                FinalSlide(),
                ThankyouSlide(),
              ],
            ),
            Positioned(
              right: 16,
              bottom: 16,
              child: Column(
                children: [
                  FloatingActionButton(
                    tooltip: "Controller",
                    heroTag: "Remote",
                    child: Icon(Icons.settings_remote),
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Column(
                              children: [
                                ListTile(
                                  title: Text("Home"),
                                  onTap: (){
                                    _pageController.animateToPage(0, duration: Duration(
                                        seconds: 1
                                    ), curve: Curves.easeOut);
                                    Navigator.of(context).pop();
                                  },
                                ),
                                ListTile(
                                  title: Text("Dart"),
                                  onTap: (){
                                    _pageController.animateToPage(4, duration: Duration(
                                      seconds: 1
                                    ), curve: Curves.easeOut);
                                    Navigator.of(context).pop();
                                  },
                                ),
                                ListTile(
                                  title: Text("Null Safety"),
                                  onTap: (){
                                    _pageController.animateToPage(12, duration: Duration(
                                        seconds: 1
                                    ), curve: Curves.easeOut);
                                    Navigator.of(context).pop();
//                                    _pageController.jumpToPage(15);
                                  },
                                ),
                                ListTile(
                                  title: Text("Final Slide"),
                                  onTap: (){
                                    _pageController.animateToPage(22, duration: Duration(
                                        seconds: 1
                                    ), curve: Curves.easeOut);
                                    Navigator.of(context).pop();
                                  },
                                )
                              ],
                            );
                          });
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  _pageIndex != 0
                      ? FloatingActionButton(
                          onPressed: () {
                            _pageController.previousPage(
                                duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
                          },
                          tooltip: 'Prev Slide',
                          heroTag: "Prev Page",
                          child: Icon(Icons.arrow_upward),
                        )
                      : Container(),
                  SizedBox(
                    height: 16,
                  ),
                  _pageIndex != 22 ? FloatingActionButton(
                    onPressed: () {
                      _pageController.nextPage(duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
                    },
                    heroTag: "next ",
                    tooltip: 'Next Slide',
                    child: Icon(Icons.arrow_downward),
                  ): Container(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
