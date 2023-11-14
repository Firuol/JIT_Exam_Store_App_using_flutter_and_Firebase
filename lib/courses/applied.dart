import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppliedScreen extends StatelessWidget {
  const AppliedScreen({
    Key? key,
    required this.onRestart,
  }) : super(key: key);
  final void Function() onRestart;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Here are applied solved questions!',
                style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Image.asset('assets/images/page_1.jpg'),
                    Image.asset('assets/images/page_2.jpg'),
                    Image.asset('assets/images/page_3.jpg'),
                    Image.asset('assets/images/page_4.jpg'),
                    Image.asset('assets/images/page_5.jpg'),
                    Image.asset('assets/images/page_6.jpg'),
                    Image.asset('assets/images/page_7.jpg'),
                    Image.asset('assets/images/page_8.jpg'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              TextButton.icon(
                onPressed: onRestart,
                style: TextButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 76, 139, 175),
                ),
                icon: const Icon(Icons.refresh),
                label: const Text('Restart Exam!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
