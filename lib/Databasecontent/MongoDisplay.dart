import 'package:flutter/material.dart';
import 'package:portfolio/Database/Skills.dart';
import 'package:portfolio/Database/mongodb.dart';
import 'package:portfolio/components/ProgressBar.dart';

class MongoDisplay extends StatefulWidget {
  const MongoDisplay({super.key});

  @override
  State<MongoDisplay> createState() => _MongoDisplayState();
}

class _MongoDisplayState extends State<MongoDisplay> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Mongodatabase.getData(),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          if (snapshot.hasData) {
            // var totalData = snapshot.data.length;
            return Card(
              elevation: 5,
              clipBehavior: Clip.hardEdge,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return displayCard(Skills.fromJson(snapshot.data[index]));
                  }),
            );
          } else {
            return const Center(
              child: Text("No data visible"),
            );
          }
        }
      },
    );
  }

  Widget displayCard(Skills data) {
    return ProgressBar(percentage: data.percentage, skill: data.skills);
  }
}
