import 'package:flutter/material.dart';

class Slide02 extends StatefulWidget {
  @override
  _Slide02State createState() => _Slide02State();
}

class _Slide02State extends State<Slide02> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/dart_logo.webp",
                  height: MediaQuery.of(context).size.height / 6,
                ), SizedBox(width: 16,),
                Text(
                  "Dart",
                  style: TextStyle(fontSize: 28),
                ),
                SizedBox(width: 16,),
                Text(
                  "Client-Side Development",
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
            SizedBox(height: 16,),
            ExpansionTile(
              title: Text("First appeared"),
              expandedAlignment: Alignment.centerLeft,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("📌 2011년 10월 10일 처음 공개"),
                )
              ],
            ),
            ExpansionTile(
              title: Text("Dart 2 의 도입"),
              expandedAlignment: Alignment.centerLeft,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("📌 2017-12-14일 1.24.3 발표이후 DartConf 2018(2018/1월)에서 처음 공개"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("📌 정식 버전은 2018-08-07일 2.0.0 발표"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("📌 new keyword가 optional로 변경"),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
