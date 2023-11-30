import 'package:bmi_calculator/components/Reusable_Card.dart';
import 'package:flutter/material.dart';
const bottomButtonColor= Color(0xFFEB1555);
const activeButtonColor=Color(0xFF272A4D);
const inActiveButtonColor=Color(0xFF1D1E33);
const textcolor= Color(0xFF8D8E98);

const double smallContainerHeight=180;
const double smallContainerWidth=160;
const double bigContainerHeight=190;
const double bigContainerWidth=360;
const int mySmallMargin=15;
const int myBigMargin=10;

int age=20;
int Height=180;
int weight = 60;


Color currentmColor= inActiveButtonColor;
Color currentfColor= inActiveButtonColor;

enum Gender{
  Male,
  Female,
  nth,
}

Gender selectedGender=Gender.nth;

const NumberingTitle = TextStyle(fontSize: 50,fontWeight: FontWeight.w900, color: Color(0xFFB6B9C7));
const TextTitle=TextStyle(fontSize: 20,color: Color(0xFF8D8E98));
