import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inndekos_flutter/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff5843BE)),
        useMaterial3: true,
      ),
      home: const SplashScreen()
    );
  }
}
