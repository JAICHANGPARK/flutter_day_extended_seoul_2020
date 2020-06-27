import 'package:flutter/material.dart';

class Slide12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(52.0),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(height: double.infinity, width: double.infinity, child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("A",style: TextStyle(
                      fontSize: 64
                  ),),
                  Image.network("https://img.hankyung.com/photo/201912/01.21302999.1.jpg"),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    "",
                    style: TextStyle(fontSize: 32),
                  ),
                ],
              ),
            )),
          ),
          SizedBox(width: 64,),
          Expanded(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("B",style: TextStyle(
                    fontSize: 64
                  ),),
                  Center(child: Image.asset("assets/jamgganmanyo.gif")),
                  SizedBox(
                    height: 64,
                  ),
                  Text(
                    "잠깐 뭔가 빠진거같은데..\n뭐지 이 허전함은?",
                    style: TextStyle(fontSize: 32),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
