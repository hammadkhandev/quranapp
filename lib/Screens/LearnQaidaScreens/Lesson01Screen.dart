import 'package:flutter/material.dart';
import 'package:quranapp/Utilities/SliverWidgets.dart';
import 'package:quranapp/Utilities/constants.dart';
import 'package:quranapp/Utilities/LessonsContentList/listLesson01.dart';

class Lesson01Screen extends StatelessWidget {
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
                        'Individual Letters - حروف مفردات',
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
                      'Intorduction',
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
                            TextSpan(text: 'There are 29 '),
                            TextSpan(
                              text: 'Mufridat Letters ',
                              style: TextStyle(
                                color: kGreenLightColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                                text: '✦ ',
                                style: TextStyle(color: Colors.brown)),
                            TextSpan(
                                text:
                                    'Pronouce the Mufridat Letters with the Arabic accent according to the rules of Tajweed and Qira\'at; avoiding any other accent. '),
                            TextSpan(
                                text: '✦ ',
                                style: TextStyle(color: Colors.brown)),
                            TextSpan(
                                text:
                                    'You may hear the sound of correct pronunciation by tapping on any word. ',
                                style: TextStyle(color: Colors.red)),
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
                children: listLessonOne,
              ),
            ),
            // SliverGrid.count(
            //   crossAxisCount: 5,
            //   mainAxisSpacing: 1,
            //   crossAxisSpacing: 1,
            //   children: listLessonOne,
            // ),
          ],
        ),
      ),
    );
  }
}
