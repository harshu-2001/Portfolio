import 'dart:convert';

Experience experienceFromJson(String str) =>
    Experience.fromJson(json.decode(str));

String experienceToJson(Experience data) => json.encode(data.toJson());

class Experience {
  String id;
  String company;
  String position;
  String jTime;
  String eTime;
  String keyPoints;

  Experience({
    required this.id,
    required this.company,
    required this.position,
    required this.jTime,
    required this.eTime,
    required this.keyPoints,
  });

  factory Experience.fromJson(Map<String, dynamic> json) => Experience(
        id: json["_id"],
        company: json["Company"],
        position: json["Position"],
        jTime: json["J_time"],
        eTime: json["E_time"],
        keyPoints: json["Key_points"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "Company": company,
        "Position": position,
        "J_time": jTime,
        "E_time": eTime,
        "Key_points": keyPoints,
      };
}
