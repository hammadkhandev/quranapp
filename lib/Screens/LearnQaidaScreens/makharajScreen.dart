import 'package:flutter/material.dart';
import 'package:quranapp/Utilities/constants.dart';

class MakharajScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            // height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/texture/textureAlif.png'),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 2,
                    color: Colors.grey.withOpacity(0.8),
                    offset: Offset(2, 2),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Image.asset('assets/images/articulators.png')),
        ],
      )

          // body: Center(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Container(
          //         // height: MediaQuery.of(context).size.height,
          //         margin: EdgeInsets.symmetric(horizontal: 15),
          //         decoration: BoxDecoration(
          //           image: DecorationImage(
          //             image: AssetImage('assets/texture/textureAlif.png'),
          //           ),
          //           borderRadius: BorderRadius.circular(20),
          //           boxShadow: [
          //             BoxShadow(
          //               spreadRadius: 2,
          //               color: Colors.grey.withOpacity(0.8),
          //               offset: Offset(2, 2),
          //               blurRadius: 5,
          //             ),
          //           ],
          //         ),
          //         child: Image.asset('assets/images/articulators.png'),
          //       ),
          //     ],
          //   ),
          // ),
          ),
    );
  }
}
