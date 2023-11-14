import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logic extends StatelessWidget {
  const Logic({
    super.key,
    required this.logicmid2012,
    required this.logicmid2015,
  });
  final void Function() logicmid2012;
  final void Function() logicmid2015;

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
              logicmid2012();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(
                  255, 58, 124, 165), // Set the background color to green
              minimumSize: const Size(200, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text('Logic Mid 2012'), // Changed the label text
          ),
          ElevatedButton(
            onPressed: () {
              logicmid2015();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(
                  255, 58, 124, 165), // Set the background color to green
              minimumSize: const Size(200, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text('Logic Mid 2015'), // Changed the label text
          ),
        ],
      ),
    );
  }
}
