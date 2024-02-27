import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard(
      {super.key,
      required this.company,
      required this.position,
      required this.jTime,
      required this.eTime,
      required this.keyPoints});
  final String company;
  final String position;
  final String jTime;
  final String eTime;
  final String keyPoints;

  @override
  Widget build(BuildContext context) {
    List<dynamic> points = [];
    if (keyPoints.contains(":")) {
      points = keyPoints.split(":");
    }

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width * 0.5,
      color: Colors.white.withOpacity(0),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                company,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "($jTime - $eTime)",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                position,
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade700,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              points.length > 1
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " • ${points[0]}",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          overflow: TextOverflow.clip,
                        ),
                        Text(
                          " • ${points[1]}",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          overflow: TextOverflow.clip,
                        )
                      ],
                    )
                  : Text(
                      " • $keyPoints",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      overflow: TextOverflow.clip,
                    )
            ],
          ),
        ),
      ),
    );
  }
}
