import 'package:flutter/material.dart';
import 'package:portfolio/Database/Project.dart';
import 'package:portfolio/Pages/Details.dart';
import 'package:portfolio/components/ProjectCard.dart';

import '../Database/constant.dart';
import '../Database/mongodb.dart';

class MongoDbProjects extends StatefulWidget {
  final int count;

  const MongoDbProjects({super.key, this.count = 0});

  @override
  State<MongoDbProjects> createState() => _MongoDbProjectsState();
}

class _MongoDbProjectsState extends State<MongoDbProjects> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Mongodatabase.getDataProject(),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          if (snapshot.hasData) {
            length = snapshot.data.length;
            return ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount:
                    (widget.count > 1) ? widget.count : snapshot.data.length,
                itemBuilder: (context, index) {
                  return displayCard(
                      Project.fromJson(snapshot.data[index]), widget.count);
                });
          } else {
            return const Center(
              child: Text("No data visible"),
            );
          }
        }
      },
    );
  }

  Widget displayCard(Project data, int count) {
    return (count == 3)
        ? GestureDetector(
            onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) =>
                          Details(title: data.projects, id: data.id))))
            },
            child: ProjectCard(
                projects: data.projects,
                projectLinks: data.projectLinks,
                projectDescription: data.projectDescription),
          )
        : GestureDetector(
            child: ProjectCard(
                projects: data.projects,
                projectLinks: data.projectLinks,
                projectDescription: data.projectDescription),
            onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) =>
                          Details(title: data.projects, id: data.id))))
            },
          );
  }
}
