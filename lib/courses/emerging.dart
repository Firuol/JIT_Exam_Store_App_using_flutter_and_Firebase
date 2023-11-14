import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Emerging extends StatelessWidget {
  const Emerging(
      {super.key,
      required this.emergingfinal2013,
      required this.emergingmid2014});
  final void Function() emergingfinal2013;
  final void Function() emergingmid2014;

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
            'Which exam do you want ?',
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
              emergingfinal2013();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(
                  255, 58, 124, 165), // Set the background color to green
              minimumSize: const Size(200, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text('Emerging Final 2013'), // Changed the label text
          ),
          ElevatedButton(
            onPressed: () {
              emergingmid2014();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(
                  255, 58, 124, 165), // Set the background color to green
              minimumSize: const Size(200, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text('Emerging mid 2014'), // Changed the label text
          ),
        ],
      ),
    );
  }
}
