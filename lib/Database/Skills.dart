// // // To parse this JSON data, do
// // //
// // //     final skills = skillsFromJson(jsonString);

// // import 'dart:convert';

// // Skills skillsFromJson(String str) => Skills.fromJson(json.decode(str));

// // String skillsToJson(Skills data) => json.encode(data.toJson());

// // class Skills {
// //   String id;
// //   String skills;
// //   double percentage;

// //   Skills({
// //     required this.id,
// //     required this.skills,
// //     required this.percentage,
// //   });

// //   factory Skills.fromJson(Map<String, dynamic> json) => Skills(
// //         id: json["_id"],
// //         skills: json["skills"],
// //         percentage: json["percentage"],
// //       );

// //   Map<String, dynamic> toJson() => {
// //         "_id": id,
// //         "skills": skills,
// //         "percentage": percentage,
// //       };
// // }
// // To parse this JSON data, do
// //
// //     final skills = skillsFromJson(jsonString);

// import 'dart:convert';

// Skills skillsFromJson(String str) => Skills.fromJson(json.decode(str));

// String skillsToJson(Skills data) => json.encode(data.toJson());

// class Skills {
//   String id;
//   String skills;
//   Percentage percentage;

//   Skills({
//     required this.id,
//     required this.skills,
//     required this.percentage,
//   });

//   factory Skills.fromJson(Map<String, dynamic> json) => Skills(
//         id: json["_id"],
//         skills: json["skills"],
//         percentage: Percentage.fromJson(json["percentage"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "_id": id,
//         "skills": skills,
//         "percentage": percentage.toJson(),
//       };
// }

// class Percentage {
//   String numberDouble;

//   Percentage({
//     required this.numberDouble,
//   });

//   factory Percentage.fromJson(Map<String, dynamic> json) => Percentage(
//         numberDouble: json["\u0024numberDouble"],
//       );

//   Map<String, dynamic> toJson() => {
//         "\u0024numberDouble": numberDouble,
//       };
// }

class Skills {
  String? sId;
  String? skills;
  dynamic percentage;

  Skills({this.sId, this.skills, this.percentage});

  Skills.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    skills = json['skills'];
    percentage = json['percentage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['skills'] = this.skills;
    if (this.percentage != null) {
      data['percentage'] = this.percentage!.toJson();
    }
    return data;
  }
}
