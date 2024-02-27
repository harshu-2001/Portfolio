import 'package:flutter/material.dart';
import 'package:portfolio/Database/Experience.dart';
import 'package:portfolio/components/ExperienceCard.dart';

import '../Database/mongodb.dart';

class MongoDisplayExperience extends StatefulWidget {
  const MongoDisplayExperience({super.key});

  @override
  State<MongoDisplayExperience> createState() => _MongoDisplayExperienceState();
}

class _MongoDisplayExperienceState extends State<MongoDisplayExperience> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Mongodatabase.getDataExp(),
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
                  return displayCard(Experience.fromJson(snapshot.data[index]));
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

  Widget displayCard(Experience data) {
    return ExperienceCard(
        company: data.company,
        position: data.position,
        jTime: data.jTime,
        eTime: data.eTime,
        keyPoints: data.keyPoints);
  }
}
