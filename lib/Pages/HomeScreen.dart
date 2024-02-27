import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Databasecontent/MongoDisplay.dart';
import 'package:portfolio/Databasecontent/MongoDisplayExperience.dart';
import 'package:portfolio/Databasecontent/MongoDisplayProjects.dart';
import 'package:portfolio/Pages/ProjectScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Uri gmailUrl = Uri.parse(
      'mailto:harshushri50@gmail.com?subject=Greetings&body=Hello%20World');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 40, 48, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 8, 8, 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Harsh Shrivastava",
                    style: GoogleFonts.poppins(
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                  const CircleAvatar(
                    radius: 40,
                    child: CircleAvatar(
                      radius: 38,
                      foregroundImage: AssetImage("assets/images/me.jpg"),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                child: Text(
                  "Junior Android Developer",
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.grey.shade500,
                      wordSpacing: 2),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                height: 2,
                color: Colors.white,
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              Container(
                height: MediaQuery.of(context).size.width * 0.2,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.mail,
                            size: 20,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            child: Text(
                              "harshushri50@gmail.com",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.grey.shade500,
                              ),
                            ),
                            onTap: () => {},
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(
                            Icons.phone,
                            size: 20,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            child: Text(
                              "+91-7974647991",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.grey.shade500,
                              ),
                            ),
                            onTap: () => {},
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.insert_link_sharp,
                            size: 20,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            child: Text(
                              "https://github.com/harshu-2001",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.grey.shade500,
                              ),
                            ),
                            onTap: () => {},
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            size: 20,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            child: Text(
                              "Gurugram(Haryana)",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.grey.shade500,
                              ),
                            ),
                            onTap: () => {},
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                height: 2,
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Discover about my space!",
                          style: GoogleFonts.poppins(
                              fontSize: 48, color: Colors.white)),
                      DefaultTextStyle(
                        style: GoogleFonts.josefinSans(
                            fontSize: 40, color: Colors.blueAccent.shade200),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            RotateAnimatedText("Android Development",
                                textAlign: TextAlign.left),
                            RotateAnimatedText("Flutter Development",
                                textAlign: TextAlign.left),
                            RotateAnimatedText("Machine Learning Models",
                                textAlign: TextAlign.left),
                          ],
                          isRepeatingAnimation: true,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Text(
                "  Experience",
                style: GoogleFonts.poppins(fontSize: 32, color: Colors.white),
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width * 1.8,
                  color: Colors.white.withOpacity(0),
                  child: const MongoDisplayExperience()),
              const SizedBox(
                height: 10,
              ),

              Text(
                "  Skills",
                style: GoogleFonts.poppins(fontSize: 32, color: Colors.white),
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width * 1.8,
                  child: const MongoDisplay()),
              const SizedBox(
                height: 30,
              ),

              Row(
                children: [
                  Text(
                    "  Latest Projects",
                    style:
                        GoogleFonts.poppins(fontSize: 32, color: Colors.white),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProjectScreen()),
                            )
                          },
                      icon: const Icon(
                        Icons.moving_rounded,
                        size: 30,
                        color: Colors.cyan,
                      ))
                ],
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: const MongoDbProjects(
                    count: 3,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
