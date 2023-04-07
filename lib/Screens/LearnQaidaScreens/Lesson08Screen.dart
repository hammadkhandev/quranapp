import 'package:flutter/material.dart';
import 'package:quranapp/Utilities/LessonsContentList/listLesson02.dart';
import 'package:quranapp/Utilities/LessonsContentList/listLesson08.dart';
import 'package:quranapp/Utilities/SliverWidgets.dart';
import 'package:quranapp/Utilities/constants.dart';
import 'package:quranapp/Utilities/LessonsContentList/listLesson01.dart';

class Lesson08Screen extends StatelessWidget {
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
                        'Compound Letters - حروف مرکبات',
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
                                    'Two or more letter combine [join together] to form  a Murakkab (Compound).\n'),
                            TextSpan(
                                text: '✦ ',
                                style: TextStyle(color: Colors.brown)),
                            TextSpan(
                                text:
                                    'Pronouce each of the Murakkab letters separately like Mufridat Letters.\n'),
                            TextSpan(
                                text: '✦ ',
                                style: TextStyle(color: Colors.brown)),
                            TextSpan(
                              text:
                                  'Make sre in this lesson also to pronounce the letters in the established manner i.e. with the Arabic accent.\n ',
                            ),
                            TextSpan(
                                text: '✦',
                                style: TextStyle(color: Colors.brown)),
                            TextSpan(
                              text:
                                  'When two or more letters are joined together in writing, their shape gets changed a little. Usually, the head of the letter is written and the body is omitted. ',
                            ),
                            TextSpan(
                                text: '✦',
                                style: TextStyle(color: Colors.brown)),
                            TextSpan(
                              text:
                                  'Identify the letters which are the same when in the compound from by the difference in the number and position of the dots.',
                            ),
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
                children: listLesson08,
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
