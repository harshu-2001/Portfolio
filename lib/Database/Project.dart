import 'dart:convert';

class Project {
  final int id;
  final String projects;
  final String projectLinks;
  final String projectDescription;

  Project({
    required this.id,
    required this.projects,
    required this.projectLinks,
    required this.projectDescription,
  });

  factory Project.fromRawJson(String str) => Project.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Project.fromJson(Map<String, dynamic> json) => Project(
        id: json["_id"],
        projects: json["Projects"],
        projectLinks: json["Project_links"],
        projectDescription: json["Project_description"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "Projects": projects,
        "Project_links": projectLinks,
        "Project_description": projectDescription,
      };
}
