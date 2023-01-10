import 'package:flutter/material.dart';
import 'package:archtreks_website/Utils/string_const.dart' as constants;
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      // appBar: AppBar(
      //   shadowColor: Colors.black54,
      //   backgroundColor: Colors.transparent,
      //   elevation: 0.0,
      // ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(children: [
              Image.asset(
                'assets/MT. kENYA LAKES EDITION-1919.jpg',
                // height: MediaQuery.of(context).size.height,
                // width: MediaQuery.of(context).size.width ,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                          overlayColor:
                              MaterialStatePropertyAll<Color>(Colors.white38),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "About Us",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily:
                                    GoogleFonts.robotoCondensed().fontFamily),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                          overlayColor:
                              MaterialStatePropertyAll<Color>(Colors.white38),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Contact Us",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily:
                                    GoogleFonts.robotoCondensed().fontFamily),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                          overlayColor:
                              MaterialStatePropertyAll<Color>(Colors.white38),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Destinations",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily:
                                    GoogleFonts.robotoCondensed().fontFamily),
                          ),
                        )),
                  ),
                ],
              ),
              Column(
                verticalDirection: VerticalDirection.down,
                children: [
                  Column(
                    children: [
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 2 / 7),
                          child: Image.asset(
                            'assets/archtrekslogo2.png',
                            scale: 1.5,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Mountain Trekking",
                            style: GoogleFonts.londrinaOutline(
                                fontSize: 40,
                                textStyle: TextStyle(color: Colors.white)),
                          ),
                          const Text(
                            " • ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 60,
                            ),
                          ),
                          Text(
                            "Tours & Safaris",
                            style: GoogleFonts.londrinaOutline(
                                fontSize: 40,
                                textStyle: TextStyle(
                                  color: Colors.white,
                                )),
                          ),
                          const Text(
                            " • ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 60,
                            ),
                          ),
                          Text(
                            "Cultural Treks",
                            style: GoogleFonts.londrinaOutline(
                                fontSize: 40,
                                textStyle: TextStyle(color: Colors.white)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 1 / 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 3 / 5,
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
                                  MediaQuery.of(context).size.height * 3 / 5,
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
                            height: MediaQuery.of(context).size.height * 3 / 5,
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
                    ],
                  ),
                ],
              ),
            ]),
            const SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left:20.0, right: 20.0, top: 10.0, bottom: 10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.white,
                        blurRadius: 10.0,
                        blurStyle: BlurStyle.outer)
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "About Us",
                            style: TextStyle(
                              fontSize: 40,
                              fontFamily:
                                  GoogleFonts.londrinaSolid().fontFamily,
                              color: Colors.black,
                              letterSpacing: 2.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            constants.aboutUs,
                            style: TextStyle(
                                fontFamily:
                                    GoogleFonts.oswald().fontFamily,
                                letterSpacing: 1.0, fontSize: 14),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height:20)
          ],
        ),
      ),
    );
  }
}
