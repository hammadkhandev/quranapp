import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quranapp/Utilities/LessonsContentList/listLesson02.dart';
import 'package:quranapp/Utilities/LessonsContentList/listLesson03.dart';
import 'package:quranapp/Utilities/SliverWidgets.dart';
import 'package:quranapp/Utilities/constants.dart';
import 'package:quranapp/Utilities/LessonsContentList/listLesson01.dart';

class Lesson03Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            ///First sliver is the App Bar
            SliverAppBar(
              backgroundColor: kGreenLightColor,
              title: MyAppBar(
                Icon(
                  Icons.ac_unit,
                  size: 25,
                ),
                () {},
              ),
              pinned: true,
              expandedHeight: 230,
              flexibleSpace: FlexibleSpaceBar(
                background: MyFlexibleAppBar(
                  // Image.asset('assets/images/madaniqaida.png', width: 180),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child:
                        Image.asset('assets/images/bismillah.png', width: 80),
                  ),

                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/texture/lessonTexture.png',
                        width: 310,
                      ),
                      Text(
                        'Harakaat - حرکات',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: kGoldenColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  child: ExpansionTile(
                    collapsedBackgroundColor: kLightColor,
                    leading: Icon(Icons.auto_awesome),
                    title: Text(
                      'Instructions',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                                text: '✦ ',
                                style: TextStyle(color: Colors.brown)),
                            TextSpan(
                                text:
                                    "The plural of Harakah is 'Harakah'. Fathah[Zabar] "),
                            TextSpan(
                                text: 'ــَـ',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 50.0,
                                )),
                            TextSpan(text: '    Kasrah [Zayr]'),
                            TextSpan(
                                text: ' ـــِـ',
                                style: TextStyle(
                                  fontSize: 50.0,
                                  color: Colors.green,
                                )),
                            TextSpan(text: '   and Dammah '),
                            TextSpan(text: '[Paysh]', style: kgreenText),
                            TextSpan(
                                text: ' ــُـ ',
                                style: TextStyle(
                                    color: Colors.green, fontSize: 35.0)),
                            TextSpan(
                                text:
                                    'Fatah [Zabar] and Dammah [Paysh] are placed above the letter whereas Kasrah [Zayr] is placed underneath.\n\n'),
                            TextSpan(
                                text: '✦',
                                style: TextStyle(color: Colors.brown)),
                            TextSpan(
                                text:
                                    " The letter which has a Harakah on it is called 'Mutaharrik[ah]'\n"),
                            TextSpan(
                                text: '✦ ',
                                style: TextStyle(color: Colors.brown)),
                            TextSpan(text: ' Pronounce the Fathah ['),
                            TextSpan(text: 'Zabar', style: kgreenText),
                            TextSpan(text: ']  '),
                            TextSpan(
                                text: 'ــَـ',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 50.0,
                                )),
                            TextSpan(
                                text:
                                    '   by opening the mouth and raising the voice, Kasrah ['),
                            TextSpan(text: 'Zayr', style: kgreenText),
                            TextSpan(text: '] '),
                            TextSpan(
                                text: ' ـــِـ',
                                style: TextStyle(
                                  fontSize: 50.0,
                                  color: Colors.green,
                                  //fontFamily: 'Microsoft Uighur'
                                )),
                            TextSpan(
                                text: '  by dropping the voice and Dammah ['),
                            TextSpan(text: 'Paysh', style: kgreenText),
                            TextSpan(text: ']'),
                            TextSpan(
                                text: ' ــُـ ',
                                style: TextStyle(
                                    color: Colors.green, fontSize: 35.0)),
                            TextSpan(text: 'by the rounding of the lips\n'),
                            TextSpan(
                                text: '✦',
                                style: TextStyle(color: Colors.brown)),
                            TextSpan(
                                text:
                                    '   Pronounce the Harakaat in an Arabic accent without stretching or suddenly pausing the voice.'),
                            TextSpan(
                                text:
                                    'If a Harakah or Sukoon is present on an ‘'),
                            TextSpan(
                                text: 'اَلِف',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 25.0,
                                    fontFamily: 'Microsoft Uighur')),
                            TextSpan(text: "’ then pronounce it as Hamzah ‘ "),
                            TextSpan(
                                text: 'اْ , اَُِ \n',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 30.0,
                                    fontFamily: 'Microsoft Uighur')),
                            TextSpan(
                                text: '✦ ',
                                style: TextStyle(color: Colors.brown)),
                            TextSpan(text: 'If the letter ‘'),
                            TextSpan(
                                text: 'را', style: TextStyle(fontSize: 20.0)),
                            TextSpan(
                              text:
                                  '’ has a Fathah [Zabar] or Dammah [Paysh] on it pronounce it with a thick tone. If the letter ‘',
                            ),
                            TextSpan(
                                text: 'را', style: TextStyle(fontSize: 20.0)),
                            TextSpan(
                                text:
                                    '’ has a Kasrah [Zayr] below it, pronounce it with a thin tone. '),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Wrap(
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.end,
                textDirection: TextDirection.rtl,
                spacing: 10,
                runSpacing: 10,
                children: listLesson03,
              ),
            ),
            // SliverGrid.count(
            //   crossAxisCount: 5,
            //   mainAxisSpacing: 1,
            //   crossAxisSpacing: 1,
            //   children: listLesson02,
            // ),
          ],
        ),
      ),
    );
  }
}


// Widget wordGrid(List<Widget> listLessonOne) => GridView.count(
//       crossAxisCount: 5,
//       reverse: true,
//       controller: _scrollController,
//       padding: EdgeInsets.all(2),
//       childAspectRatio: 1 / 1,
//       children: listLessonOne,
//     );
