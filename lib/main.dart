import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            color: Colors.blueGrey,
            padding: const EdgeInsets.all(40),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Wednesday, 18th September 2024",
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  "2:00 PM",
                  style: GoogleFonts.bakbakOne(
                    textStyle: const TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  "Kolkata",
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  ),
                ),
                // Removed the extra parenthesis here
                const SizedBox(height: 20),
                // Displaying the weather icon from a network image
                Image.network(
                  'https://cdn2.iconfinder.com/data/icons/weather-flat-14/64/weather02-512.png',
                  height: 100, // Specify the height of the image
                  width: 100,  // Specify the width of the image
                  errorBuilder: (context, error, stackTrace) {
                    // Error handling in case the image fails to load
                    return Icon(
                      Icons.error,
                      color: Colors.red,
                      size: 50,
                    );
                  },
                ),
                const SizedBox(height: 15),
                Text(
                  "30°",
                  style: GoogleFonts.bakbakOne(
                    textStyle: const TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
