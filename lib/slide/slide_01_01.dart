import 'package:flutter/material.dart';

class Slide0101 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Stack(
              children: [
                Positioned(
                  left: 16,
                  top: 16,
                  bottom: 0,
                  right: 0,
                  child: Card(
                    color: Colors.blue,
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  bottom: 16,
                  right: 16,
                  child: Card(
                    elevation: 12,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 32),
                      child: Column(
                        children: [
                          Text(
                            "구성",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 42),
                          ),
                          Divider(),
                          Text("1. Dart"),
                          Text("2. Flutter Day 엿보기"),
                          Text("2. Null Safety"),
                          Divider(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Stack(
              children: [
                Positioned(
                  left: 16,
                  top: 16,
                  bottom: 0,
                  right: 0,
                  child: Card(
                    color: Colors.blue,
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  bottom: 16,
                  right: 16,
                  child: Card(
                    elevation: 12,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 32),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "초심자",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 42),
                          ),
                          Divider(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("1. 비전공자"),
                              Text("2. 디자이너"),
                              Text("3. Flutter를 처음 경험하신 분"),
                              Text("4. Flutter 사용 1개월 미만"),
                            ],
                          ),

                          Divider(),
                          Spacer(),
                          Transform.rotate(
                            angle: -0.2,
                            child: Container(
                              height: 64,
                              width: 260,
                              decoration: BoxDecoration(color: Colors.blue),
                              child: Center(
                                child: Text(
                                  "약간 매운맛",
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 24),
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Stack(
              children: [
                Positioned(
                  left: 16,
                  top: 16,
                  bottom: 0,
                  right: 0,
                  child: Card(
                    color: Colors.blue,
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  bottom: 16,
                  right: 16,
                  child: Card(
                    elevation: 12,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 32),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "중수/고수",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 42),
                          ),
                          Divider(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("1. 전공자"),
                              Text("2. 그냥 고수"),
                              Text("3. Flutter를 경험해 보신분"),
                              Text("4. Flutter 사용 3개월 이상"),
                              Text("5. Flutter로 제품출시까지 해보신 분"),
                            ],
                          ),

                          Divider(),
                          Spacer(),
                          Transform.rotate(
                            angle: -0.2,
                            child: Container(
                              height: 64,
                              width: 260,
                              decoration: BoxDecoration(color: Colors.blue),
                              child: Center(
                                child: Text(
                                  "순한맛/물탄맛",
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 24),
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
