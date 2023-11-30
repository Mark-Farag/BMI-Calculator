import 'dart:ffi';
import 'dart:math';
import 'package:flutter/material.dart';

class Calculator_Brain{
  Calculator_Brain({required this.weight , required this.height, } );

  int weight;
  int height;
double _bmi=0.0;

  String CalculateBmi(){
     _bmi= weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
}

String bmiResult(){
    if (_bmi>=25){
      return'OVERWEIGHT';
  }else if(_bmi>18.5){
      return 'NORMAL';
  }else return 'UNDERWEIGHT';
}

String bmiText(){
  if (_bmi>=25){
    return'you have higher than the normal body weight , try to excersise more ';
  }else if(_bmi>18.5){
    return 'you have a normal body weight, Good Job ';
  }else return 'you have lower than the normal body weight , you can eat a bit more';
}



}