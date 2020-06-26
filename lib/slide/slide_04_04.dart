import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';

class Slide0404 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(36.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              "🛡 Null Aware (non-nullable) 5\n [?](Nullable types)",
              style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 64),
            ),
          ),
          Expanded(
            flex: 4,
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
                          child: ListView(
                            children: [
                              Text(
                                "Dart",
                                style: TextStyle(fontSize: 28),
                              ),
                              SizedBox(
                                height: 64,
                              ),
                              Text(
                                '''var i = 42;\nString name = getFileName();\nfinal b = Foo();''',
                                style: GoogleFonts.sourceCodePro(fontWeight: FontWeight.bold, fontSize: 28),
                              ),
                              Divider(
                                height: 24,
                              ),
                              Text(
                                '''int? aNullableInt = null;''',
                                style: GoogleFonts.sourceCodePro(fontWeight: FontWeight.bold, fontSize: 28),
                              ),
                              Divider(
                                height: 24,
                              ),
                              Text(
                                ''' 
                            class Cafe {
                            String Coffee; // forbidden
                            String? Bread; // allowed
                            }''',
                                style: GoogleFonts.sourceCodePro(fontWeight: FontWeight.bold, fontSize: 28),
                              ),
                              Divider(
                                height: 24,
                              ),
                              Text(
                                ''' 
                            void main() {
                            String? coffee;
                            print(coffee); // prints null
                            }
                            ''',
                                style: GoogleFonts.sourceCodePro(fontWeight: FontWeight.bold, fontSize: 28),
                              ),
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
