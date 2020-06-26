import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';

class Slide0403 extends StatelessWidget {
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
              "🛡 Null Aware (non-nullable) 4\n [?[]]",
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
                      width: MediaQuery.of(context).size.width / 2,
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
                                '''List<int>? list = [1, 2, 3];\nint? x = list?[0]; // 1''',
                                style: GoogleFonts.sourceCodePro(fontWeight: FontWeight.bold, fontSize: 28),
                              ),
                              Divider(
                                height: 24,
                              ),
                              Text(
                                '''📌2019.04.23: Added e1?.[e2] operator syntax\n📌v2.9.0:Update the null-aware subscript syntax from ?.[] to ?[].''',
                                style: GoogleFonts.sourceCodePro(fontWeight: FontWeight.bold, fontSize: 24),
                              ),
                              Divider(
                                height: 24,
                              ),
                              Text(
                                '''📌 e1?[e2] ''',
                                style: GoogleFonts.sourceCodePro(fontWeight: FontWeight.bold, fontSize: 24),
                              ),
                              Text(
                                '''✅ C# 과 Swift 언어에서 사용하는 방식을 따름.''',
                                style: GoogleFonts.sourceCodePro(fontWeight: FontWeight.bold, fontSize: 24),
                              ),
                              Text(
                                '''✅ 간결함.''',
                                style: GoogleFonts.sourceCodePro(fontWeight: FontWeight.bold, fontSize: 24),
                              ),
                              Divider(
                                height: 24,
                              ),
                              Text(
                                '''📌 e1?.[e2] ''',
                                style: GoogleFonts.sourceCodePro(fontWeight: FontWeight.bold, fontSize: 24),
                              ),
                              Text(
                                '''🚫 e1?.[e2] 방식은 cascade syntax와 비슷함.''',
                                style: GoogleFonts.sourceCodePro(fontWeight: FontWeight.bold, fontSize: 24),
                              ),
                              Text(
                                '''🚫 e1?.e2()와 syntax 비슷함.''',
                                style: GoogleFonts.sourceCodePro(fontWeight: FontWeight.bold, fontSize: 24),
                              ),
                              Text(
                                '''🚫 e1 ? [e2] : e3 애매모호한 연산이 발생가능함.''',
                                style: GoogleFonts.sourceCodePro(fontWeight: FontWeight.bold, fontSize: 24),
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
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: Markdown(
                        data: """ # ECMAScript proposals 
## Prior Art
Unless otherwise noted, in the following languages, the syntax consists of a question mark prepending the operator, (`a?.b`, `a?.b()`, `a?[b]` or `a?(b)` when applicable).

The following languages implement the operator with the same general semantics as this proposal (i.e., 1) guarding against a null base value, and 2) short-circuiting application to the whole chain):
* C#: [Null-conditional operator](https://msdn.microsoft.com/en-us/library/dn986595.aspx) — null-conditional member access or index, in read access.
* Swift: [Optional Chaining](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/OptionalChaining.html#//apple_ref/doc/uid/TP40014097-CH21-ID245) — optional property, method, or subscript call, in read and write access.
* CoffeeScript: [Existential operator](http://coffeescript.org/#existential-operator) — existential operator variant for property accessor, function call, object construction (`new a?()`). Also applies to assignment and deletion.

The following languages have a similar feature, but do not short-circuit the whole chain when it is longer than one element. This is justified by the fact that, in those languages, methods or properties might be legitimately used on null (e.g., null.toString() == "null" in Dart):
* Kotlin: [Safe calls](https://kotlinlang.org/docs/reference/null-safety.html#safe-calls) — optional property access for read; optional property assignment for write.
* Dart: [Conditional member access](https://dart.dev/guides/language/language-tour#other-operators) — optional property access.
* Ruby: [Safe navigation operator](https://ruby-doc.org/core-2.6/doc/syntax/calling_methods_rdoc.html#label-Safe+navigation+operator) — Spelled as: `a&.b`


The following languages have a similar feature. We haven’t checked whether they have significant differences in semantics with this proposal:
* Groovy: [Safe navigation operator](http://groovy-lang.org/operators.html#_safe_navigation_operator)
* Angular: [Safe navigation operator](https://angular.io/guide/template-syntax#safe-navigation-operator)

## Syntax

The Optional Chaining operator is spelled `?.`. It may appear in three positions:
```javascript
obj?.prop       // optional static property access
obj?.[expr]     // optional dynamic property access
func?.(...args) // optional function or method call
                        """,
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
