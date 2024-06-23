import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            children: [
              Text(
                'Booking Appointment in 3 Easy Steps',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(height: 20), // Add some spacing between the text and containers
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildStepContainer(
                stepNumber: 1,
                description: 'First, select the category in which you want to book an appointment.',
              ),
              buildStepContainer(
                stepNumber: 2,
                description: 'Second, provide the necessary details and preferences.',
              ),
              buildStepContainer(
                stepNumber: 3,
                description: 'Third, select your favorite person, choose a date and time you\'re comfortable with, and book it.',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildStepContainer({required int stepNumber, required String description}) {
    return Container(
      width: 365,
      height: 267,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 156,
            child: SizedBox(
              width: 365,
              height: 111,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '$description\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Roboto Slab',
                        fontWeight: FontWeight.w500,
                        height: 1.5, // adjusted for better readability
                      ),
                    ),
                    TextSpan(
                      text: '\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Roboto Slab',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 128,
            top: 0,
            child: Container(
              width: 109,
              height: 109,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: OvalBorder(
                  side: BorderSide(
                    width: 10,
                    strokeAlign: BorderSide.strokeAlignOutside,
                    color: Color(0xFF0C421F),
                  ),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 165,
            top: 31,
            child: SizedBox(
              width: 34,
              height: 47,
              child: Text(
                '$stepNumber',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFF0000),
                  fontSize: 32,
                  fontFamily: 'Rockwell Extra Bold',
                  fontWeight: FontWeight.w800,
                  height: 1, // adjusted for better alignment
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
