import 'package:flutter/material.dart';

class Slide02 extends StatefulWidget {
  @override
  _Slide02State createState() => _Slide02State();
}

class _Slide02State extends State<Slide02> {
  @override
  Widget build(BuildContext context) {
    TextStyle _tStyle = TextStyle(
      fontSize: 20
    );
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
              title: Text("📍 First appeared"),
              expandedAlignment: Alignment.centerLeft,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("📌 2011년 10월 10일 처음 공개", style: _tStyle,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("📌 Web Client 개발을 위해 Google에서 개발한 언어", style: _tStyle,),
                )
              ],
            ),
            ExpansionTile(
              title: Text("📍 Null Aware 도입 (v1.12.0)"),
              expandedAlignment: Alignment.centerLeft,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("📌 다른 Sound Language 들에서 사용되는 null aware 키워드가 1.12.0 버전(2015-08-31)에서 적용", style: _tStyle,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("📌 ?? if null operator. expr1 ?? expr2 evaluates to expr1 if not null, otherwise expr2.", style: _tStyle,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("📌 ??= null-aware assignment. v ??= expr causes v to be assigned expr only if v is null.", style: _tStyle,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("📌 x?.p: null-aware access. x?.p evaluates to x.p if x is not null, otherwise evaluates to null.", style: _tStyle,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("📌 x?.m(): null-aware method invocation. x?.m() invokes m only if x is not null.", style: _tStyle,),
                ),
              ],
            ),
            ExpansionTile(
              title: Text("📍 침체기(일부러 배울 필요없는 언어)"),
              expandedAlignment: Alignment.centerLeft,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network("http://files.itworld.co.kr/archive/image/2018/03/dart-100753268-orig.jpg"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("📌 기존 Javascipt(JS)를 대체할 수 있는가에 대한 논쟁", style: _tStyle,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("📌 Javascipt(JS)가 있고 JS만으로도 크게 구현과 사용에 문제가 없는데.. 라는 의견이 많았음.", style: _tStyle,),
                ),
                Image.asset("assets/img_slide_02_01.png"),
                Image.asset("assets/img_slide_02_02.png"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("📌 출처:  https://medium.com/@richardeng/dart-is-dead-aedced9fd3d1", style: _tStyle,),
                ),
              ],
            ),

            ExpansionTile(
              title: Text("📍 Dart Developer Summit 2015 (1차 전환점)"),
              expandedAlignment: Alignment.centerLeft,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("📌 Eric Seidel : Sky engine을 활용하여 모바일 시스템에 Dart가 사용될 수 있음을 보여줌.", style: _tStyle,),
                ),
              ],
            ),
            ExpansionTile(
              title: Text("📍 Dart 2 의 도입 (v2.0.0)"),
              expandedAlignment: Alignment.centerLeft,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("📌 2017-12-14일 1.24.3 발표이후 DartConf 2018(2018/1월)에서 처음 공개", style: _tStyle,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("📌 정식 버전은 2018-08-07일 2.0.0 발표", style: _tStyle,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("📌 new keyword가 optional로 변경", style: _tStyle,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("📌 const keyword가 optional로 변경", style: _tStyle,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("📌 Dart's 타입 시스템의 개선", style: _tStyle,),
                ),
              ],
            ),
            ExpansionTile(
              title: Text("📍 v2.3.0"),
              expandedAlignment: Alignment.centerLeft,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("📌 Slice keyword 도입", style: _tStyle,),
                ),
              ],
            ),
            ExpansionTile(
              title: Text("📍 Null Safety"),
              expandedAlignment: Alignment.centerLeft,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("📌 당시 개발자 프리뷰 단계로 2018년 11월 18일 Null Safety에 대한 이슈가 등록됨"),
                ),
                Image.asset("assets/img_slide_02_00.png"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("📌 2019.04.23 Added e1?.[e2] operator syntax를 시작으로 Null safety에 대한 적용이 시작되었음."),
                ),
              ],
            ),
            ExpansionTile(
              title: Text("📍 현재 v2.9.0"),
              expandedAlignment: Alignment.centerLeft,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("📌 당시 개발자 프리뷰 단계로 2018년 11월 18일 Null Safety에 대한 이슈가 등록됨"),
                ),
                Image.asset("assets/img_slide_02_00.png"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("📌 2019.04.23 Added e1?.[e2] operator syntax를 시작으로 Null safety에 대한 적용이 시작되었음."),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
