import 'package:bmi_calculator/components/ContainerFace.dart';
import 'package:bmi_calculator/components/Reusable_Card.dart';
import 'package:bmi_calculator/constants.dart';
import '../components/BottomButton.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'InputPage.dart';
import 'package:bmi_calculator/Calculator-Brain.dart';


class ResultPage extends StatelessWidget {
  ResultPage({required this.bmi, required this.bmiValue, required this.bmiText});
  String bmi;
  String bmiValue;
  String bmiText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          SizedBox(height: 20,),

          Row(children: [
            SizedBox(width: 30,),
            Text('Your Results', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40,),),
            SizedBox(width: 100,),
          ]),

          ReusableCard(
            color: inActiveButtonColor,
            myHeight: 550,
            myWidth: double.infinity,
            myMargin: 20,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('$bmiValue', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green[300], fontSize: 20),),
                Text('$bmi', style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold, color: Colors.white),),
                Text('$bmiText',style: TextStyle(fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
              ],
            ),
          ),

          BottomButton(title: 'recalculate', ontap: (){
            Navigator.pushNamed(context, '/');
          }),
        ],
      ),
    );
  }
}
