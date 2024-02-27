import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.projects,
    required this.projectLinks,
    required this.projectDescription,
  });
  final String projects;
  final String projectLinks;
  final String projectDescription;
  @override
  Widget build(BuildContext context) {
    bool flag = true;
    if (projectLinks.contains("na")) {
      flag = false;
    }
    List<String> arr = [];
    List<dynamic> list = [];
    arr = projectDescription.split(":");
    if (arr.length > 0) {
      for (var i = 0; i < arr.length; i++) {
        list.add(Text(
          " • ${arr[i]}",
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: Colors.black,
          ),
          overflow: TextOverflow.clip,
        ));
      }
    }

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width * 0.4,
      color: Colors.white.withOpacity(0),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 5,
              ),
              Text(
                projects,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              (flag)
                  ? Column(
                      children: [
                        GestureDetector(
                          child: Text(
                            "($projectLinks)",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          onTap: () => {},
                        ),
                        const SizedBox(
                          height: 5,
                        )
                      ],
                    )
                  : const SizedBox(
                      height: 5,
                    ),
              if (arr.length > 1)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    for (var item in arr)
                      Text(
                        " •$item",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.clip,
                      ),
                  ],
                )
              else
                Text(
                  " •${arr[0]}",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  overflow: TextOverflow.clip,
                ),
              const SizedBox(
                height: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
