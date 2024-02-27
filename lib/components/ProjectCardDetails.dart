import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectDetailCard extends StatelessWidget {
  final int id;
  final String projects;
  final String date;
  final String skills;
  final String description;
  final String keyFeature;
  final String technologyUsed;
  final String conclusion;
  final int check;
  const ProjectDetailCard(
      {super.key,
      required this.id,
      required this.projects,
      required this.date,
      required this.skills,
      required this.description,
      required this.keyFeature,
      required this.technologyUsed,
      required this.conclusion,
      required this.check});

  @override
  Widget build(BuildContext context) {
    List<String> arr = [];
    arr = skills.split(":");
    return (id == check)
        ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 5,
              clipBehavior: Clip.antiAlias,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.93,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () => {Navigator.pop(context)},
                            icon: const Icon(Icons.arrow_back_ios_new_sharp)),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          projects,
                          style: GoogleFonts.poppins(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          date,
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () => {},
                              icon: Image.asset(
                                "assets/images/playstore.png",
                                width: 40,
                                height: 40,
                              ),
                              iconSize: 20,
                            ),
                            // const SizedBox(
                            //   width: 20,
                            // ),
                            // IconButton(
                            //   onPressed: () => {},
                            //   icon: Image.asset(
                            //     "assets/images/app-store.png",
                            //     width: 40,
                            //     height: 40,
                            //   ),
                            //   iconSize: 20,
                            // )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Project Scope :",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          overflow: TextOverflow.clip,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          description,
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                          overflow: TextOverflow.clip,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Skills :",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Chip(
                              label: Text(
                                arr[0],
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                                overflow: TextOverflow.clip,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Chip(
                              label: Text(
                                arr[1],
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                                overflow: TextOverflow.clip,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Key Features: ",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          keyFeature,
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                          overflow: TextOverflow.clip,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Technology Used: ",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          technologyUsed,
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                          overflow: TextOverflow.clip,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "ScreenShots: ",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),

                        //ScreenShots url :
                        /*{
                          code for visulasize the screenshots 
                        }*/
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Conclusion: ",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          conclusion,
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                          overflow: TextOverflow.clip,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        : const SizedBox(
            height: 0,
          );
  }
}
