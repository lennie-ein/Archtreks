import 'package:archtreks_website/pages/destinationpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Model/ProgramModel.dart';

Widget destinationCard(ProgramModel program,
    BuildContext cardContext) {
  // var program = snapshot.data;

  return Container(
    height: MediaQuery
        .of(cardContext)
        .size
        .height * 3 / 5,
    width: MediaQuery
        .of(cardContext)
        .size
        .width * 2 / 8,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      image: const DecorationImage(
          image:
          AssetImage("assets/Mt. Kenya Mackinders Camp (650 of 745).jpg"),
          fit: BoxFit.cover),
    ),
    child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: const LinearGradient(
                colors: [Colors.transparent, Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
        ),
        Center(
          child: Text(" ${program?.name.toString()} "),
        )
      ],
    ),
  );
}
