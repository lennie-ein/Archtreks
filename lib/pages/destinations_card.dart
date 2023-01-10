import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget destinationCards(BuildContext context){

  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 1 / 5,
          width: MediaQuery.of(context).size.width * 2 / 8,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  color: Colors.black,
                  blurRadius: 20.0,
                  blurStyle: BlurStyle.outer)
            ],
            image: const DecorationImage(
              image: AssetImage(
                  "assets/MT. kENYA LAKES EDITION-848.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Center(
            child: Text(
              "Lakes Edition",
              textAlign: TextAlign.center,
              style: GoogleFonts.londrinaOutline(
                  fontSize: 40,
                  textStyle:
                  const TextStyle(color: Colors.white)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(45.0),
          child: Container(
            height:
            MediaQuery.of(context).size.height * 1 / 5,
            width: MediaQuery.of(context).size.width * 2 / 8,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: Colors.black,
                    blurRadius: 20.0,
                    blurStyle: BlurStyle.outer)
              ],
              image: const DecorationImage(
                  image: AssetImage(
                      "assets/Mt. Kenya Mackinders Camp (650 of 745).jpg"),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Center(
              child: Text(
                "Hikes",
                textAlign: TextAlign.center,
                style: GoogleFonts.londrinaSolid(
                    fontSize: 40,
                    textStyle: const TextStyle(
                        color: Colors.black54)),
              ),
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 1 / 5,
          width: MediaQuery.of(context).size.width * 2 / 8,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  color: Colors.black,
                  blurRadius: 20.0,
                  blurStyle: BlurStyle.outer)
            ],
            image: const DecorationImage(
                image: AssetImage(
                    "assets/MT. kENYA LAKES EDITION-850.jpg"),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Center(
            child: Text(
              "Safaris",
              textAlign: TextAlign.center,
              style: GoogleFonts.londrinaOutline(
                  fontSize: 40,
                  textStyle: TextStyle(color: Colors.white)),
            ),
          ),
        )
      ],
    ),
  );
}