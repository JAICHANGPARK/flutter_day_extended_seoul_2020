import 'package:f_desktop/slide/second_page.dart';
import 'package:f_desktop/slide/title_slider.dart';
import 'package:flutter/material.dart';

import 'slide/intro_slide.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Day Extended Seoul',
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final FocusNode _focusNode = FocusNode();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: RawKeyboardListener(
        focusNode: _focusNode,
        onKey: (event) {
          print(event);
          print(pageIndex);
          if (event.logicalKey.keyLabel == "[") {

          } else if (event.logicalKey.keyLabel == "]") {

          }
        },
        child: Stack(
          children: [
            IndexedStack(
              index: pageIndex,
              children: [
                SecondSlidePage(),
                Center(
                  // Center is a layout widget. It takes a single child and positions it
                  // in the middle of the parent.
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Wow',
                      ),
                      Text(
                        '$_counter',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              right: 16,
              bottom: 16,
              child: Row(
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    tooltip: 'home',
                    heroTag: "home",
                    child: Icon(Icons.home),
                  ),
                  SizedBox(width: 16,),
                 pageIndex != 0?  FloatingActionButton(
                    onPressed: () {
                      pageIndex--;
                      if (pageIndex <= 0) {
                        pageIndex = 0;
                      }
                      setState(() {

                      });
                    },
                    tooltip: 'pREV',
                    heroTag: "prev page",
                    child: Icon(Icons.arrow_back),
                  ) : Container(),
                  SizedBox(width: 16,),
                  FloatingActionButton(
                    onPressed: () {
                      pageIndex++;
                      if (pageIndex > 2) {
                        pageIndex = 2;
                      }
                      setState(() {

                      });
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
