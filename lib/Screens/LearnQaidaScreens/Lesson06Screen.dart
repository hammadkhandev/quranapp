import 'package:flutter/material.dart';
import 'package:quranapp/Utilities/LessonsContentList/listLesson02.dart';
import 'package:quranapp/Utilities/LessonsContentList/listLesson06.dart';
import 'package:quranapp/Utilities/SliverWidgets.dart';
import 'package:quranapp/Utilities/constants.dart';
import 'package:quranapp/Utilities/LessonsContentList/listLesson01.dart';

class Lesson06Screen extends StatelessWidget {
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
                        'Rawan - رواں ',
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
                            TextSpan(text: 'Read this lesson both ways i.e'),
                            TextSpan(text: ' Rawan ', style: kredBoldText),
                            TextSpan(text: ' (without spelling) as well as '),
                            TextSpan(text: 'Hijjay ', style: kredBoldText),
                            TextSpan(text: ' (with spelling).\n'),
                            TextSpan(
                                text: '✦ ',
                                style: TextStyle(color: Colors.brown)),
                            TextSpan(
                                text:
                                    'Take special care in correctly pronouncing '),
                            TextSpan(
                                text: 'Harakaat ',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(text: ', '),
                            TextSpan(text: 'Tanween ', style: kredBoldText),
                            TextSpan(
                                text:
                                    'and all the letters; especially the Huroof of Musta’liyah.\n'),
                            TextSpan(
                                text: '✦ ',
                                style: TextStyle(color: Colors.brown)),
                            TextSpan(text: 'Do Hijjay in this way:  '),
                            TextSpan(text: 'مِیمّ →  مَلِكُُ'),
                            TextSpan(text: ' Fathah [Zabar]  لَا٘م , مّ'),
                            TextSpan(
                                text:
                                    '  Kasrah [Zayr] کا٘ف , مَلِ → لِ Dammatayn [two Paysh] ۔ مَلِكُُ → کُنْ'),
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
                children: listLesson06,
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
