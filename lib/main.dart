import 'package:code_healers_sih/view/home/widgets/Screen_1.dart';
import 'package:code_healers_sih/view/home/widgets/Symptoms_screen.dart';
import 'package:code_healers_sih/view/home/widgets/bottom_navbar.dart';
import 'package:code_healers_sih/view/home/widgets/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SymptomsScreen()
    );
  }
}

