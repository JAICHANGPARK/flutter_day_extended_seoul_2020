import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';

class Slide0401 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(36.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              "🛡 Null Aware 2",
              style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 100),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: SizedBox(
                      height: double.infinity,
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dart",
                                style: TextStyle(fontSize: 28),
                              ),
                              SizedBox(
                                height: 64,
                              ),
                              Text(
                                '''int a;\na ??= 3;\nprint(a); // <-- Prints 3.''',
                                style: GoogleFonts.sourceCodePro(fontWeight: FontWeight.bold, fontSize: 28),
                              ),
                              Divider(
                                height: 24,
                              ),
                              Text(
                                '''(x) => x == null ? obj = value : x''',
                                style: GoogleFonts.sourceCodePro(fontWeight: FontWeight.bold, fontSize: 28),
                              ),
                              //
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: SizedBox(
                      height: double.infinity,
                      width: MediaQuery.of(context).size.width / 2.2,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Kotlin (Elvis Operator)",
                                style: TextStyle(fontSize: 28),
                              ),
                              SizedBox(
                                height: 64,
                              ),
                              Text(
                                '''val l = b?.length ?: -1''',
                                style: GoogleFonts.sourceCodePro(fontWeight: FontWeight.bold, fontSize: 28),
                              ),
                              Divider(
                                height: 24,
                              ),
                              Text(
                                '''val l: Int = if (b != null) b.length else -1''',
                                style: GoogleFonts.sourceCodePro(fontWeight: FontWeight.bold, fontSize: 28),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
