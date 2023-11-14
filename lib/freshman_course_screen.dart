import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FreshmanScreen extends StatelessWidget {
  const FreshmanScreen(
      {super.key,
      required this.geography,
      required this.physics,
      required this.logic,
      required this.mathematics,
      required this.englishI,
      required this.psychology});
  final void Function() geography;
  final void Function() physics;
  final void Function() logic;
  final void Function() mathematics;
  final void Function() englishI;
  final void Function() psychology;
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
              geography();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(
                  255, 58, 124, 165), // Set the background color to green
              minimumSize: const Size(200, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text('Geography'), // Changed the label text
          ),
          ElevatedButton(
            onPressed: () {
              physics();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(
                  255, 58, 124, 165), // Set the background color to green
              minimumSize: const Size(200, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text('Physics'), // Changed the label text
          ),
          ElevatedButton(
            onPressed: () {
              logic();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(
                  255, 58, 124, 165), // Set the background color to green
              minimumSize: const Size(200, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text('Logic'), // Changed the label text
          ),
          ElevatedButton(
            onPressed: () {
              mathematics();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(
                  255, 58, 124, 165), // Set the background color to green
              minimumSize: const Size(200, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text('Mathematics'), // Changed the label text
          ),
          ElevatedButton(
            onPressed: () {
              englishI();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(
                  255, 58, 124, 165), // Set the background color to green
              minimumSize: const Size(200, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text('Com. English I'), // Changed the label text
          ),
          ElevatedButton(
            onPressed: () {
              psychology();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(
                  255, 58, 124, 165), // Set the background color to green
              minimumSize: const Size(200, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text('Psychology'), // Changed the label text
          ),
        ],
      ),
    );
  }
}
