import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialScreen extends StatelessWidget {
  const SocialScreen({super.key});

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
            'Select Semister.',
            style: GoogleFonts.lato(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton.icon(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(
                  255, 58, 124, 165), // Set the background color to green
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('1st Semister'), // Changed the label text
          )
        ],
      ),
    );
  }
}
