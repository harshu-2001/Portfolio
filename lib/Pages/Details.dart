import 'package:flutter/material.dart';
import 'package:portfolio/Database/ProjectDetails.dart';
import 'package:portfolio/components/ProjectCardDetails.dart';

import '../Database/mongodb.dart';

class Details extends StatefulWidget {
  final String title;
  final int id;
  const Details({super.key, required this.title, required this.id});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 40, 48, 1),
      body: FutureBuilder(
        future: Mongodatabase.getDataProjectData(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            if (snapshot.hasData) {
              return ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return displayCard(
                        ProjectDetails.fromJson(snapshot.data[index]),
                        widget.id);
                  });
            } else {
              return const Center(
                child: Text("No data visible"),
              );
            }
          }
        },
      ),
    );
  }

  Widget displayCard(ProjectDetails data, int id) {
    return ProjectDetailCard(
        id: data.id,
        projects: data.projects,
        date: data.date,
        skills: data.skills,
        description: data.description,
        keyFeature: data.keyFeature,
        technologyUsed: data.technologyUsed,
        conclusion: data.conclusion,
        check: id);
  }
}
