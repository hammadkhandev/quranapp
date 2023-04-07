import 'package:flutter/material.dart';
import 'package:quranapp/Utilities/LessonsContentList/listLesson04.dart';
import 'package:quranapp/Utilities/SliverWidgets.dart';
import 'package:quranapp/Utilities/constants.dart';
import 'package:quranapp/Utilities/LessonsContentList/listLesson01.dart';

class Lesson04Screen extends StatelessWidget {
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
                        'Rawan  -  راون',
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
                            TextSpan(text: 'Read this lesson'),
                            TextSpan(
                              text: ' Rawan ',
                              style: kredBoldText,
                            ),
                            TextSpan(text: ' (i.e. without spelling).\n'),
                            TextSpan(
                                text: '✦ ',
                                style: TextStyle(color: Colors.brown)),
                            TextSpan(
                                text:
                                    'Take special care in pronouncing the Harakaat correctly.\n '),
                            TextSpan(
                                text:
                                    'Differentiate clearly between the letters that are Qareeb-us-Sawt  i.e. the letters that sound somewhat similar.\n'),
                            TextSpan(
                                text: '✦ ',
                                style: TextStyle(color: Colors.brown)),
                            TextSpan(
                                text:
                                    'Qareeb-us-Sawt letters are They. 16 are:  (ط,ت) ,  (ظ,ذ,زَ) , (ث,ص,س) , (ض,د) , (ق,ك) , (ح,ھ) , (ع,ء).'),
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
                children: listLesson04,
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
