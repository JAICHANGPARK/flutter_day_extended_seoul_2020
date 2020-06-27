import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';

class Slide0405 extends StatelessWidget {
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
              "🛡 Null Aware (non-nullable) 6\n [!](Runtime Throw)",
              style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 64),
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: SizedBox(
                        height: double.infinity,
                        width: MediaQuery.of(context).size.width / 2,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: ListView(
                              children: [

                                Text(
                                  '''String serveCoffee([String? temp]) {\nreturn temp! + ' coffee';\n}''',
                                  style: GoogleFonts.sourceCodePro(fontWeight: FontWeight.bold, fontSize: 26),
                                ),
                                Divider(
                                  height: 24,
                                ),

                                Text(
                                  '''int? foo = 5;\nint bar = foo!;''',
                                  style: GoogleFonts.sourceCodePro(fontWeight: FontWeight.bold, fontSize: 26),
                                ),
                                Divider(
                                  height: 24,
                                ),
                              ],
                            ),

                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: 
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView(
                        children: [
                          Text("""if(temp == null){\nthrow ArgumentError();\n}\nreturn temp + ' Coffee';}
                          """
                          ,style: GoogleFonts.sourceCodePro(fontWeight: FontWeight.bold, fontSize: 26),)
                        ],
                      ),
                    )
                  ),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
