import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({super.key, required this.percentage, required this.skill});
  final dynamic percentage;
  final dynamic skill;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width * 0.14,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                skill,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            FAProgressBar(
              currentValue: percentage,
              displayText: "%",
              displayTextStyle: GoogleFonts.poppins(
                  fontSize: 8,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              size: 12,
              progressGradient: LinearGradient(
                colors: [
                  Colors.blue.withOpacity(0.75),
                  Colors.green.withOpacity(0.75),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
