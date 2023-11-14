import 'package:exam_app/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:exam_app/start_screen.dart';
import 'package:exam_app/stream_screen.dart';
import 'package:exam_app/natural_screen.dart';
import 'package:exam_app/social_screen.dart';
import 'package:exam_app/freshman_course_screen.dart';
import 'package:exam_app/question_screen.dart';
import 'package:exam_app/result_screen.dart';
import 'package:exam_app/data/geographyfinal2013.dart';
import 'package:exam_app/data/geographyfinal2014.dart';
import 'package:exam_app/courses/geography.dart';
import 'package:exam_app/courses/logic.dart';
import 'package:exam_app/data/logicmid2012.dart';
import 'package:exam_app/data/logicmid2015.dart';
import 'package:exam_app/pre_engineering.dart';
import 'package:exam_app/courses/applied.dart';
import 'package:exam_app/comingsoon.dart';
import 'package:exam_app/courses/emerging.dart';
import 'package:exam_app/data/emergingfinal2013.dart';
import 'package:exam_app/data/emergingmid2014.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';
  List<String> screenHistory = [
    'start-screen'
  ]; // Initialize with the start screen

  void switchScreentToStream() {
    setState(() {
      activeScreen = 'stream_screen';
      screenHistory.add('stream_screen');
    });
  }

  void switchScreentToNatural() {
    setState(() {
      activeScreen = 'natural_stream_screen';
      screenHistory.add('natural_stream_screen');
    });
  }

  void switchScreentTofreshman() {
    setState(() {
      activeScreen = 'freshman_screen';
      screenHistory.add('freshman_screen');
    });
  }

  void switchScreentTopreengineering() {
    setState(() {
      activeScreen = 'pre-engineering_screen';
      screenHistory.add('pre-engineering_screen');
    });
  }

  void switchScreentTogeoquiz() {
    setState(() {
      activeScreen = 'geoquiz';
      screenHistory.add('geoquiz');
    });
  }

  void switchScreentTophysics() {
    setState(() {
      activeScreen = 'physicsquiz';
      screenHistory.add('physicsquiz');
    });
  }

  void switchScreentTologic() {
    setState(() {
      activeScreen = 'logicexam';
      screenHistory.add('logicexam');
    });
  }

  void switchScreentTomaths() {
    setState(() {
      activeScreen = 'geoquiz';
      screenHistory.add('geoquiz');
    });
  }

  void switchScreentToenglishI() {
    setState(() {
      activeScreen = 'geoquiz';
      screenHistory.add('geoquiz');
    });
  }

  void switchScreentTopsychology() {
    setState(() {
      activeScreen = 'geoquiz';
      screenHistory.add('geoquiz');
    });
  }

  void switchtoanthropology() {
    setState(() {
      activeScreen = 'geoquiz';
      screenHistory.add('geoquiz');
    });
  }

  void switchtocivics() {
    setState(() {
      activeScreen = 'geoquiz';
      screenHistory.add('geoquiz');
    });
  }

  void switchtocpp() {
    setState(() {
      activeScreen = 'geoquiz';
      screenHistory.add('geoquiz');
    });
  }

  void switchtoenglishII() {
    setState(() {
      activeScreen = 'geoquiz';
      screenHistory.add('geoquiz');
    });
  }

  void switchtoenterprn() {
    setState(() {
      activeScreen = 'geoquiz';
      screenHistory.add('geoquiz');
    });
  }

  void switchtoemerging() {
    setState(() {
      activeScreen = 'emergingquiz';
      screenHistory.add('emergingquiz');
    });
  }

  void switchtoapplied() {
    setState(() {
      activeScreen = 'applied';
    });
  }

  void switchScreentToresultscreen() {
    setState(() {
      activeScreen = 'resultscreen';
      screenHistory.add('resultscreen');
    });
  }

  void restartexam() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'natural_stream_screen';
      screenHistory.add('natural_stream_screen');
    });
  }

  void comingSoon() {
    setState(() {
      activeScreen = 'comingsoon';
      screenHistory.add('comingsoon');
    });
  }

  void switchScreentTogeo2013() {
    setState(() {
      activeScreen = 'geofinal2013';
      screenHistory.add('geofinal2013');
      questions = geofinal2013;
    });
  }

  void switchScreentTogeo2014() {
    setState(() {
      activeScreen = 'geofinal2014';
      screenHistory.add('geofinal2014');
      questions = geofinal2014;
    });
  }

  void switchtologicmid2012() {
    setState(() {
      activeScreen = 'logicmid2012';
      screenHistory.add('logicmid2012');
      questions = logicmid2012;
    });
  }

  void switchtologicmid2015() {
    setState(() {
      activeScreen = 'logicmid2015';
      screenHistory.add('logicmid2015');
      questions = logicmid2015;
    });
  }

  void switchtoemergingfinal2013() {
    setState(() {
      activeScreen = 'emergingfinal2013';
      screenHistory.add('emergingfinal2013');
      questions = emergingfinal2013;
    });
  }

  void switchtoemergingmid2014() {
    setState(() {
      activeScreen = 'emergingmid2014';
      screenHistory.add('emergingmid2014');
      questions = emergingfinal2014;
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'resultscreen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreentToStream);
    if (activeScreen == 'stream_screen') {
      screenWidget = StreamScreen(switchScreentToNatural, comingSoon);
    } else if (activeScreen == 'natural_stream_screen') {
      screenWidget = NaturalScreen(
          switchScreentTofreshman, switchScreentTopreengineering, comingSoon);
    } else if (activeScreen == 'freshman_screen') {
      screenWidget = FreshmanScreen(
          geography: switchScreentTogeoquiz,
          physics: switchScreentTophysics,
          logic: switchScreentTologic,
          mathematics: switchScreentTomaths,
          englishI: switchScreentToenglishI,
          psychology: switchScreentTopsychology);
    } else if (activeScreen == 'pre-engineering_screen') {
      screenWidget = PreEngineeringScreen(
        anthropology: switchtoanthropology,
        civics: switchtocivics,
        cpp: switchtocpp,
        englishII: switchtoenglishII,
        enterprn: switchtoenterprn,
        emerging: switchtoemerging,
        applied: switchtoapplied,
      );
    } else if (activeScreen == 'other_natural_screen') {
      screenWidget = const SocialScreen();
    } else if (activeScreen == 'resultscreen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
        onRestart: restartexam,
      );
    } else if (activeScreen == 'geoquiz') {
      screenWidget = Geography(switchScreentTogeo2013, switchScreentTogeo2014);
    } else if (activeScreen == 'geofinal2013') {
      screenWidget = QuestionsScreen(
          onSelectAnswer: chooseAnswer, questions: geofinal2013);
    } else if (activeScreen == 'geofinal2014') {
      screenWidget = QuestionsScreen(
          onSelectAnswer: chooseAnswer, questions: geofinal2014);
    } else if (activeScreen == 'logicexam') {
      screenWidget = Logic(
          logicmid2012: switchtologicmid2012,
          logicmid2015: switchtologicmid2015);
    } else if (activeScreen == 'logicmid2012') {
      screenWidget = QuestionsScreen(
          onSelectAnswer: chooseAnswer, questions: logicmid2012);
    } else if (activeScreen == 'logicmid2015') {
      screenWidget = QuestionsScreen(
          onSelectAnswer: chooseAnswer, questions: logicmid2015);
    } else if (activeScreen == 'applied') {
      screenWidget = AppliedScreen(onRestart: restartexam);
    } else if (activeScreen == 'comingsoon') {
      screenWidget = const ComingSoon();
    } else if (activeScreen == 'emergingquiz') {
      screenWidget = Emerging(
          emergingfinal2013: switchtoemergingfinal2013,
          emergingmid2014: switchtoemergingmid2014);
    } else if (activeScreen == 'emergingfinal2013') {
      screenWidget = QuestionsScreen(
          onSelectAnswer: chooseAnswer, questions: emergingfinal2013);
    } else if (activeScreen == 'emergingmid2014') {
      screenWidget = QuestionsScreen(
          onSelectAnswer: chooseAnswer, questions: emergingfinal2014);
    }

    return MaterialApp(
      home: WillPopScope(
        onWillPop: () async {
          if (screenHistory.length > 1) {
            setState(() {
              screenHistory
                  .removeLast(); // Remove the current screen from history
              activeScreen = screenHistory
                  .last; // Set the active screen to the previous screen
            });
            return false; // Do not allow the app to be closed
          }
          return true; // Allow the app to be closed if there is no history
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'JU Exam Store',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: const Color.fromARGB(255, 31, 58, 5),
            elevation: 0,
          ),
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 217, 220, 214),
                  Color.fromARGB(255, 217, 220, 214),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: screenWidget,
          ),
          drawer: Drawer(
            // Drawer content
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 12, 172, 166),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Image.asset(
                            'assets/images/my-logo.png'), // Replace with the image path
                        const Text(
                            'Jimma university 4th year software engineering students'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text(
                    'Firaol Tesfaye',
                    style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    // Handle item 1 tap
                  },
                ),
                ListTile(
                  title: Text(
                    'Tokuma Abdisa',
                    style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    // Handle item 2 tap
                  },
                ),
                // Add more list items as needed
              ],
            ),
          ),
        ),
      ),
    );
  }
}
