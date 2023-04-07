import 'package:flutter/material.dart';
import 'package:quranapp/Utilities/LessonsContentList/listLesson05.dart';
import 'package:quranapp/Utilities/SliverWidgets.dart';
import 'package:quranapp/Utilities/constants.dart';

class Lesson05Screen extends StatelessWidget {
  ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    // super.initState();
  }

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
                        'Tanween -  تنوين',
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
                                text: 'Fathatayn [two Zabar]',
                                style: kredBoldText),
                            TextSpan(
                                text: ' ـًــ ',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 30.0,
                                )),
                            TextSpan(
                                text: 'Kasratayn [two Zayr] ',
                                style: kredBoldText),
                            TextSpan(
                                text: 'ــٍ',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 33.2,
                                )),
                            TextSpan(text: ' and '),
                            TextSpan(
                                text: 'Dammatayn [two Paysh] ',
                                style: kredBoldText),
                            TextSpan(
                                text: 'ـُــ ',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 30.0,
                                )),
                            TextSpan(text: 'are called ‘'),
                            TextSpan(text: 'Tanween', style: kredBoldText),
                            TextSpan(
                                text:
                                    '’ . A letter which has a Tanween on it is called Munawwan.\n'),
                            TextSpan(
                                text: '✦ ',
                                style: TextStyle(color: Colors.brown)),
                            TextSpan(
                                text:
                                    'In fact Tanween is a ‘Noon Saakinah’ that is at the end of the word; this is why Tanween sounds like a ‘Noon Saakinah’, e.g'),
                            TextSpan(
                                text:
                                    ' اُنْ → اُُ , اِنْ → اِِ , اَنْ  → اََ \n',
                                style: kblackArabicBoldText),
                            TextSpan(
                                text: '✦ ',
                                style: TextStyle(color: Colors.brown)),
                            TextSpan(
                                text:
                                    'Spell out the examples of Tanween as follows: '),
                            TextSpan(
                                text: 'مِیَم → مََا  ',
                                style: kblackArabicBoldText),
                            TextSpan(
                              text: ' two Zabar [Fathatayn]  ',
                            ),
                            TextSpan(text: 'مِیم → مِِ , مَنْ'),
                            TextSpan(text: '  two Paysh [Dammatayn]  '),
                            TextSpan(
                                text: 'مُُ , مِِ , مََا →  مُنْ',
                                style: kblackArabicBoldText),
                            TextSpan(text: '  Sometimes  ‘'),
                            TextSpan(
                                text: 'ا',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Microsoft Uighur')),
                            TextSpan(text: '’  or  ‘'),
                            TextSpan(
                                text: 'ی',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Microsoft Uighur')),
                            TextSpan(
                                text:
                                    '’  is shown after two Zabar [Fathatayn], do not pronounce it during spelling.'),
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
                children: listLesson05,
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
