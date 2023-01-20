import 'dart:convert';
import 'package:archtreks_website/Model/ProgramModel.dart';
import 'package:http/http.dart';

class Network{

  Future<ProgramModel> getPrograms()async{
    var finalUrl = "http://localhost:8080/mountains";

    final response = await get(Uri.parse(finalUrl));

    print(response.statusCode);

    if (response.statusCode == 200 ) {


      return ProgramModel.fromJson(json.decode(response.body));
    }else {
      throw Exception("Error getting program data");
    }
  }
}