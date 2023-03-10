import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Model/ProgramModel.dart';
import '../network.dart';
import 'destinations_card.dart';

class DestinationPage extends StatefulWidget {
  const DestinationPage({Key? key}) : super(key: key);

  @override
  State<DestinationPage> createState() => _DestinationPageState();
}

class _DestinationPageState extends State<DestinationPage>
    with TickerProviderStateMixin {
  late Future<List<ProgramModel>> programs;

  late AnimationController animationController;

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(duration: const Duration(seconds: 5), vsync: this);
    animationController.repeat();
    programs = allPrograms();
    // Network().getPrograms();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Column(
        children: [
          Stack(children: [
            Image.asset("assets/Mt. Kenya Mackinders Camp (695 of 745).jpg"),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 1 / 2),
              child: Text(
                "Destinations",
                style: GoogleFonts.londrinaOutline(
                    fontSize: 40,
                    textStyle: const TextStyle(color: Colors.white)),
              ),
            ),
          ]),
          Expanded(
            child: FutureBuilder<List<ProgramModel>>(
                future: programs,
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Text(snapshot.error.toString());

                    //  Center(
                    //     child: CircularProgressIndicator(
                    //   valueColor: animationController.drive(ColorTween(
                    //       begin: Colors.blueAccent, end: Colors.red)),
                    // ));
                  } else {
                    return ListView.builder(
                        itemBuilder: (BuildContext context, int index) {
                      return destinationCard(snapshot.data![index], context);
                    });
                    // return Center(
                    //     child: CircularProgressIndicator(
                    //   valueColor: animationController.drive(ColorTween(
                    //       begin: Colors.blueAccent, end: Colors.red)),
                    // ));
                  }
                }),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }

  Future<List<ProgramModel>> allPrograms() => Network().getPrograms();
}
