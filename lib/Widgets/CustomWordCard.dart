import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:quranapp/Utilities/constants.dart';

class CustomWordCard extends StatelessWidget {
  const CustomWordCard({
    @required this.word,
    this.subWord,
    this.soundPath,
  });

  final String word;
  final String subWord;
  final String soundPath;

  @override
  Widget build(BuildContext context) {
    final double dWidth = MediaQuery.of(context).size.width;
    final double dHeight = MediaQuery.of(context).size.height;
    void playSound(String soundPath) {
      final player = AudioCache();
      player.play(soundPath);
    }

    return GestureDetector(
      onTap: () {
        playSound(soundPath);
      },
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          height: 100,
          width: 100,
          // width: dWidth / 2.4,
          // height: dWidth / 2.3,
          decoration: BoxDecoration(
            color: kLightColor,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                spreadRadius: 1,
                color: kGoldenColor.withOpacity(0.8),
                offset: Offset(2, 2),
                blurRadius: 0,
              ),
            ],
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 5,
                left: 5,
                child: Text(
                  subWord,
                  style: TextStyle(
                    color: kGoldenColor,
                  ),
                ),
              ),
              Positioned.fill(
                child: Text(
                  word,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WordCard extends StatelessWidget {
  const WordCard({@required this.textList});

  // final Widget textWidget;
  final textList;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          height: 80,
          width: 80,
          // width: dWidth / 2.4,
          // height: dWidth / 2.3,
          decoration: BoxDecoration(
            color: kLightColor,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                spreadRadius: 1,
                color: kGoldenColor.withOpacity(0.8),
                offset: Offset(2, 2),
                blurRadius: 0,
              ),
            ],
          ),
          child: Center(
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  fontFamily: 'Microsoft Uighur',
                ),
                children: textList,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
