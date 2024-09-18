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
          body: SingleChildScrollView( // Wraps everything in a scrollable view
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF5C258D), // Vibrant purple
                    Color(0xFF4389A2), // Cool blue
                  ],
                ),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    color: Colors.white.withOpacity(0.2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Text(
                            "Wednesday, 18th September 2024",
                            style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "2:00 PM",
                            style: GoogleFonts.bakbakOne(
                              textStyle: const TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Kolkata",
                            style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  // Displaying the weather icon from a network image
                  Image.network(
                    'https://cdn2.iconfinder.com/data/icons/weather-flat-14/64/weather02-512.png',
                    height: 150, // Adjusted size for better visibility
                    width: 150,
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(
                        Icons.error,
                        color: Colors.red,
                        size: 100,
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  // Temperature display
                  Card(
                    color: Colors.white.withOpacity(0.2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 20,
                      ),
                      child: Column(
                        children: [
                          Text(
                            "30° C",
                            style: GoogleFonts.aboreto(
                              textStyle: const TextStyle(
                                fontSize: 80,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Forecast row at the bottom
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        forecastCard("Thu", 'https://cdn2.iconfinder.com/data/icons/weather-flat-14/64/weather02-512.png', "32°"),
                        forecastCard("Fri", 'https://cdn2.iconfinder.com/data/icons/weather-flat-14/64/weather04-512.png', "31°"),
                        forecastCard("Sat", 'https://cdn2.iconfinder.com/data/icons/weather-flat-14/64/weather01-512.png', "33°"),
                        forecastCard("Sun", 'https://cdn2.iconfinder.com/data/icons/weather-flat-14/64/weather03-512.png', "29°"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Helper method for creating forecast cards
  Widget forecastCard(String day, String iconUrl, String temp) {
    return Column(
      children: [
        Text(
          day,
          style: GoogleFonts.lato(
            textStyle: const TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Image.network(
          iconUrl,
          height: 50,
          width: 50,
          errorBuilder: (context, error, stackTrace) {
            return Icon(
              Icons.error,
              color: Colors.red,
              size: 30,
            );
          },
        ),
        const SizedBox(height: 5),
        Text(
          temp,
          style: GoogleFonts.lato(
            textStyle: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
