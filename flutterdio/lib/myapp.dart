import 'package:flutter/material.dart';
import 'package:flutterdio/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue, textTheme: GoogleFonts.robotoTextTheme()),
      debugShowCheckedModeBanner: true,
      home: const LoginPage(),
    );
  }
}
