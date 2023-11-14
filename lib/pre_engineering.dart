import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PreEngineeringScreen extends StatelessWidget {
  const PreEngineeringScreen(
      {super.key,
      required this.anthropology,
      required this.civics,
      required this.cpp,
      required this.englishII,
      required this.enterprn,
      required this.emerging,
      required this.applied});
  final void Function() anthropology;
  final void Function() civics;
  final void Function() cpp;
  final void Function() englishII;
  final void Function() enterprn;
  final void Function() emerging;
  final void Function() applied;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.6,
            child: Image.asset(
              'assets/images/my-logo.png',
              width: 300,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Which Course do you want?',
            style: GoogleFonts.lato(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              anthropology();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(
                  255, 58, 124, 165), // Set the background color to green
              minimumSize: const Size(200, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text('Anthropology'), // Changed the label text
          ),
          ElevatedButton(
            onPressed: () {
              civics();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(
                  255, 58, 124, 165), // Set the background color to green
              minimumSize: const Size(200, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text('Civics'), // Changed the label text
          ),
          ElevatedButton(
            onPressed: () {
              cpp();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(
                  255, 58, 124, 165), // Set the background color to green
              minimumSize: const Size(200, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text('C++'), // Changed the label text
          ),
          ElevatedButton(
            onPressed: () {
              englishII();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(
                  255, 58, 124, 165), // Set the background color to green
              minimumSize: const Size(200, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text('commu. English II'), // Changed the label text
          ),
          ElevatedButton(
            onPressed: () {
              enterprn();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(
                  255, 58, 124, 165), // Set the background color to green
              minimumSize: const Size(200, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text('Entrepreneur'), // Changed the label text
          ),
          ElevatedButton(
            onPressed: () {
              emerging();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(
                  255, 58, 124, 165), // Set the background color to green
              minimumSize: const Size(200, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child:
                const Text('Emerging Technologies'), // Changed the label text
          ),
          ElevatedButton(
            onPressed: () {
              applied();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(
                  255, 58, 124, 165), // Set the background color to green
              minimumSize: const Size(200, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text('Applied I'), // Changed the label text
          ),
        ],
      ),
    );
  }
}
