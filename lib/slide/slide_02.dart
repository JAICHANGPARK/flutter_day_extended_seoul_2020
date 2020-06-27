import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pimp_my_button/pimp_my_button.dart';

class Slide02 extends StatefulWidget {
  @override
  _Slide02State createState() => _Slide02State();
}

class _Slide02State extends State<Slide02> {
  @override
  Widget build(BuildContext context) {
    TextStyle _tStyle = TextStyle(fontSize: 20);
    TextStyle _titleStyle = TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/dart_logo.webp",
                  height: MediaQuery.of(context).size.height / 6,
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  "Dart",
                  style: TextStyle(fontSize: 28),
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  "Client-Side Development",
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            PimpedButton(
              particle: ListTileDemoParticle(),
              pimpedWidgetBuilder: (context, controller){
                return ExpansionTile(
                  onExpansionChanged: (value){
                  controller.forward(from: 0.0);
                  },
                  title: Text("📍 First Appeared", style: _titleStyle,),
                  expandedAlignment: Alignment.centerLeft,
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network("https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png",  height: MediaQuery.of(context).size.height / 6,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "📌 2011년 10월 10일 처음 공개",
                        style: _tStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "📌 Web Client 개발을 위해 Google에서 개발한 언어",
                        style: _tStyle,
                      ),
                    )
                  ],
                );
              },
            ),
            ExpansionTile(
              title: Text("📍 Null Aware 도입 (v1.12.0)", style: _titleStyle,),
              expandedAlignment: Alignment.centerLeft,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "📌 다른 Sound Language 들에서 사용되는 null aware 키워드가 1.12.0 버전(2015-08-31)에서 적용",
                    style: _tStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "📌 ?? if null operator. expr1 ?? expr2 evaluates to expr1 if not null, otherwise expr2.",
                    style: _tStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "📌 ??= null-aware assignment. v ??= expr causes v to be assigned expr only if v is null.",
                    style: _tStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "📌 x?.p: null-aware access. x?.p evaluates to x.p if x is not null, otherwise evaluates to null.",
                    style: _tStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "📌 x?.m(): null-aware method invocation. x?.m() invokes m only if x is not null.",
                    style: _tStyle,
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text("📍 침체기(일부러 배울 필요없는 언어 선정??!)", style: _titleStyle,),
              expandedAlignment: Alignment.centerLeft,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  "http://files.itworld.co.kr/archive/image/2018/03/dart-100753268-orig.jpg",
                  height: MediaQuery.of(context).size.height / 1.2,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "📌 기존 Javascipt(JS)를 대체할 수 있는가에 대한 논쟁",
                    style: _tStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "📌 Javascipt(JS)가 있고 JS만으로도 크게 구현과 사용에 문제가 없는데.. 라는 의견이 많았음.",
                    style: _tStyle,
                  ),
                ),
                Image.asset("assets/img_slide_02_01.png"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "📌 Dart는 죽었다..",
                    style: _tStyle,
                  ),
                ),
                Image.asset(
                  "assets/img_slide_02_02.png",
                  height: MediaQuery.of(context).size.height / 1.2,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "📌 출처:  https://medium.com/@richardeng/dart-is-dead-aedced9fd3d1",
                    style: _tStyle,
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text("📍 Dart Developer Summit 2015 (모바일 가능성 확인)", style: _titleStyle,),
              expandedAlignment: Alignment.centerLeft,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "📌 Eric Seidel의 [Sky: An Experiment Writing Dart for Mobile]발표에서 Sky engine을 활용하여 모바일 시스템에 Dart가 사용될 수 있음을 보여줌.",
                    style: _tStyle,
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text("📍 Dart Developer Summit 2016 (1차 전환점)", style: _titleStyle,),
              expandedAlignment: Alignment.centerLeft,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "📌 Flutter에 대한 소개와 IOS, Android 디바이스에서 구동되는 것을 보여줌.",
                    style: _tStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "📌 Hot Reload에 대한 소개",
                    style: _tStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "📌 AOT 컴파일에 대한 소개",
                    style: _tStyle,
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text("📍 Google I/O 17 (2차 전환점)", style: _titleStyle,),
              expandedAlignment: Alignment.centerLeft,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "📌  Single Codebase, Two Apps with Flutter and Firebase",
                    style: _tStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "📌  370줄 미만의 코드로 Firebase와 연계한 채팅 앱을 iOS, Android 디바이스에 포팅.",
                    style: _tStyle,
                  ),
                ),
              ],
            ),
            PimpedButton(
              particle: ListTileDemoParticle(),
              pimpedWidgetBuilder: (context, controller){
                return  ExpansionTile(
                  onExpansionChanged: (value){
                    controller.forward(from: 0.0);
                  },
                  title: Text("📍 Dart 2 의 도입 (v2.0.0)", style: _titleStyle,),
                  expandedAlignment: Alignment.centerLeft,
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PimpedButton(
                      particle:Rectangle3DemoParticle(),

                      pimpedWidgetBuilder: (BuildContext context, AnimationController controller) {
                        return InkWell(
                          onTap: (){
                            controller.forward(from: 0.0);
                          },
                          child: Image.asset(
                            "assets/dart_logo.webp",
                            height: MediaQuery.of(context).size.height / 6,
                          ),
                        );
                      },

                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "📌 2017-12-14일 1.24.3 발표이후 DartConf 2018(2018/1월)에서 처음 공개",
                        style: _tStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "📌 정식 버전은 2018-08-07일 2.0.0 발표",
                        style: _tStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "📌 new keyword가 optional로 변경",
                        style: _tStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "📌 const keyword가 optional로 변경",
                        style: _tStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "📌 Dart's 타입 시스템의 개선",
                        style: _tStyle,
                      ),
                    ),
                  ],
                );
              },
//              child: ExpansionTile(
//                title: Text("📍 Dart 2 의 도입 (v2.0.0)", style: _titleStyle,),
//                expandedAlignment: Alignment.centerLeft,
//                expandedCrossAxisAlignment: CrossAxisAlignment.start,
//                children: [
//
//                  Image.asset(
//                    "assets/dart_logo.webp",
//                    height: MediaQuery.of(context).size.height / 6,
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: Text(
//                      "📌 2017-12-14일 1.24.3 발표이후 DartConf 2018(2018/1월)에서 처음 공개",
//                      style: _tStyle,
//                    ),
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: Text(
//                      "📌 정식 버전은 2018-08-07일 2.0.0 발표",
//                      style: _tStyle,
//                    ),
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: Text(
//                      "📌 new keyword가 optional로 변경",
//                      style: _tStyle,
//                    ),
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: Text(
//                      "📌 const keyword가 optional로 변경",
//                      style: _tStyle,
//                    ),
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: Text(
//                      "📌 Dart's 타입 시스템의 개선",
//                      style: _tStyle,
//                    ),
//                  ),
//                ],
//              ),
            ),
            ExpansionTile(
              title: Text("📍 v2.3.0", style: _titleStyle,),
              expandedAlignment: Alignment.centerLeft,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "📌 Slice keyword 도입",
                    style: _tStyle,
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text("📍 v2.7.0", style: _titleStyle,),
              expandedAlignment: Alignment.centerLeft,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "📌 Extension method 도입",
                    style: _tStyle,
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text("📍 Null Safety", style: _titleStyle,),
              expandedAlignment: Alignment.centerLeft,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("📌 당시 개발자 프리뷰 단계로 2018년 11월 18일 Null Safety에 대한 이슈가 등록됨", style: _tStyle),
                ),
                Image.asset("assets/img_slide_02_00.png"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("📌 2019.04.23 Added e1?.[e2] operator syntax를 시작으로 Null safety에 대한 적용이 시작되었음.",
                      style: _tStyle),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("📌 Null Safety에 대한 개발은 현재 진행형",
                      style: _tStyle.copyWith(color: Colors.red,
                      fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            ExpansionTile(
              title: Text("📍 현재 v2.9.0 (2020-06-28 기준)", style: _titleStyle,),
              expandedAlignment: Alignment.centerLeft,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
