import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NaturalScreen extends StatelessWidget {
  const NaturalScreen(this.freshman, this.preengineering, this.othernatural,
      {super.key});
  final void Function() freshman;
  final void Function() othernatural;
  final void Function() preengineering;

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
            height: 60,
          ),
          Text(
            'Which semister ?',
            style: GoogleFonts.lato(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              freshman();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(
                  255, 58, 124, 165), // Set the background color to green
              minimumSize: const Size(200, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text('Freshman'), // Changed the label text
          ),
          ElevatedButton(
            onPressed: () {
              preengineering();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(
                  255, 58, 124, 165), // Set the background color to green
              minimumSize: const Size(200, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text('Pre-Engineering'), // Changed the label text
          ),
          ElevatedButton(
            onPressed: () {
              othernatural();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(
                  255, 58, 124, 165), // Set the background color to green
              minimumSize: const Size(200, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text('Other Natural'), // Changed the label text
          ),
        ],
      ),
    );
  }
}
