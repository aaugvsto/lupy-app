import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lupito/app/pages/home/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.doppioOne().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => const HomePage(),
        '/notifications': (BuildContext context) => const HomePage()
      },
    );
  }
}
