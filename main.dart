import 'package:bmi_calculator/Screens/ResultPage.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/Screens/InputPage.dart';
import 'Screens/InputPage.dart';
import 'Screens/ResultPage.dart';

void main() => runApp(BMICalculator());


MaterialColor mycolor1 = MaterialColor(0xFF0C1234, <int, Color>{
  50: Color(0xFF0C1234),
  100: Color(0xFF0C1234),
  200: Color(0xFF0C1234),
  300: Color(0xFF0C1234),
  400: Color(0xFF0C1234),
  500: Color(0xFF0C1234),
  600: Color(0xFF0C1234),
  700: Color(0xFF0C1234),
  800: Color(0xFF0C1234),
  900: Color(0xFF0C1234),
},);

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
      // ThemeData(
      //
      // primarySwatch: mycolor ,
      // scaffoldBackgroundColor: mycolor1,
      //
      //   textTheme: TextTheme(
      //       titleLarge: TextStyle(
      //           fontSize: 20,
      //           fontWeight: FontWeight.bold,
      //           fontFamily: 'Georgia',
      //           color: Colors.white,
      //           wordSpacing: 5,
      //
      //       ),
      //     bodyMedium: TextStyle(
      //       fontSize: 20,
      //       fontWeight: FontWeight.bold,
      //       fontFamily: 'Georgia',
      //       color: Colors.lightBlue,
      //       fontStyle: FontStyle.italic,
      //     ),
      //   ),
      // ),
      ThemeData.dark().copyWith(
        appBarTheme: ThemeData.dark().appBarTheme.copyWith(
          backgroundColor: Color(0xFF13153B),
        ),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xFF1D1E33),),

      ),

      //home: InputPage(),
      initialRoute: '/',
      routes: {
    "/":(context) => InputPage(),
    "/CalculationPage": (context) => ResultPage(bmi: '', bmiValue: '', bmiText: '',),
    },
    );
  }
}

