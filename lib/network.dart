import 'dart:convert';
import 'package:archtreks_website/Model/ProgramModel.dart';
import 'package:http/http.dart';

class Network{

  Future<List<ProgramModel>> getPrograms()async{
    var finalUrl = "http://localhost:8080/mountains";
    //http://localhost:8080/mountains
    final response = await get(Uri.parse(finalUrl));
    print("URL: ${Uri.parse(finalUrl)}");
    print(response.statusCode);
    // final programJson = ProgramModel.fromJson(json.decode(response.body));
    // Map<String, dynamic> map = programJson;



    if (response.statusCode == 200 ) {
      // print(response.body);
      var data = json.decode(response.body);
      return data.map((e)=>ProgramModel.fromJson(e)).toList();
    }else {
      throw Exception("Error getting program data");
    }
  }
}