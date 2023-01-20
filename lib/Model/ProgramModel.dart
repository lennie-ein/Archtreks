class ProgramModel {
  late String sId;
  late String name;
  late int days;
  late List<String> highlights;
  late String itinerary;

  ProgramModel(
      {required this.sId, required this.name, required this.days, required this.highlights, required this.itinerary});

  ProgramModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    days = json['days'];
    highlights = json['highlights'].cast<String>();
    itinerary = json['itinerary'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['days'] = this.days;
    data['highlights'] = this.highlights;
    data['itinerary'] = this.itinerary;
    return data;
  }
}
