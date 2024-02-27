import 'package:flutter/material.dart';
// import 'package:portfolio/MongoDisplay.dart';
import 'package:portfolio/Pages/HomeScreen.dart';
import 'Database/mongodb.dart';

void main() async {
  await Mongodatabase.connect();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellowAccent),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
