import 'dart:convert';

class ProjectDetails {
  int id;
  String projects;
  String date;
  String skills;
  String description;
  String keyFeature;
  String technologyUsed;
  String conclusion;

  ProjectDetails({
    required this.id,
    required this.projects,
    required this.date,
    required this.skills,
    required this.description,
    required this.keyFeature,
    required this.technologyUsed,
    required this.conclusion,
  });

  factory ProjectDetails.fromRawJson(String str) =>
      ProjectDetails.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProjectDetails.fromJson(Map<String, dynamic> json) => ProjectDetails(
        id: json["_id"],
        projects: json["Projects"],
        date: json["Date"],
        skills: json["Skills"],
        description: json["Description"],
        keyFeature: json["Key_Feature"],
        technologyUsed: json["Technology_used"],
        conclusion: json["Conclusion"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "Projects": projects,
        "Date": date,
        "Skills": skills,
        "Description": description,
        "Key_Feature": keyFeature,
        "Technology_used": technologyUsed,
        "Conclusion": conclusion,
      };
}
