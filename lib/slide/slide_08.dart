import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Slide08 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle _titleTextStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
    );
    TextStyle _bodyTextStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
    );
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "리스트(List)와 Set Type", style: _titleTextStyle,
          ),
          SizedBox(height: 24,),
          DataTable(
            columnSpacing: 24,
            dividerThickness: 3,
            rows: [
              DataRow(
                cells: [
                  DataCell(Text("List<String>", style: _bodyTextStyle,)),
                  DataCell(Text("아니요", style: _bodyTextStyle,)),
                  DataCell(Text("아니요", style: _bodyTextStyle,)),
                  DataCell(Text("Null이 아닌 리스트는 Null 값이 아닌String 값을 가진다.", style: _bodyTextStyle,))
                ]
              ),
              DataRow(
                  cells: [
                    DataCell(Text("List<String>?", style: _bodyTextStyle,)),
                    DataCell(Text("네", style: _bodyTextStyle,)),
                    DataCell(Text("아니요", style: _bodyTextStyle,)),
                    DataCell(Text("리스트는 Null이 될 수 있다. 그러나 Null 값이 아닌 String을 가진다.", style: _bodyTextStyle,))
                  ]
              ),
              DataRow(
                  cells: [
                    DataCell(Text("List<String?>", style: _bodyTextStyle,)),
                    DataCell(Text("아니요", style: _bodyTextStyle,)),
                    DataCell(Text("네", style: _bodyTextStyle,)),
                    DataCell(Text("리스트는 Null이 될 수 없다. 그러나 Null 값인 String 값을 가질수 있다.", style: _bodyTextStyle,))
                  ]
              ),
              DataRow(
                  cells: [
                    DataCell(Text("List<String?>?", style: _bodyTextStyle,)),
                    DataCell(Text("네", style: _bodyTextStyle,)),
                    DataCell(Text("네", style: _bodyTextStyle,)),
                    DataCell(Text("리스트는 Null이 될 수 있다. Null 값이 아닌 String을 가진다.", style: _bodyTextStyle,))
                  ]
              )
            ],
            columns: [
              DataColumn(
                label: Text("Type", style: _titleTextStyle,),
              ),
              DataColumn(
                label: Text("리스트가 Null이 \n될 수 있는가?", style: _titleTextStyle,),
              ),
              DataColumn(
                label: Text("리스트 내 값이 Null이\n 될 수 있는가?", style: _titleTextStyle,),
              ),
              DataColumn(
                label: Text("상세", style: _titleTextStyle),
              )
            ],



          ),
        ],
      ),
    );
  }
}
