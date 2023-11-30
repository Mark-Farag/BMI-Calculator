import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/BottomButton.dart';
import '../components/Reusable_Card.dart';
import 'package:bmi_calculator/components/ContainerFace.dart';
import '../constants.dart';
import 'ResultPage.dart';
import 'package:bmi_calculator/Calculator-Brain.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

// void UpdateColor(Gender selectedGender){
//   selectedGender==Gender.Male ? currentmColor=activeButtonColor : currentmColor=inActiveButtonColor;
//   selectedGender==Gender.Female ? currentfColor=activeButtonColor : currentfColor=inActiveButtonColor;
// }

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),

            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.Male;
                      print('MALE Color Changed');
                    });
                  },
                  //color: currentmColor,
                  myMargin: 15,
                  myHeight: smallContainerHeight,
                  myWidth: smallContainerWidth,
                  color: selectedGender == Gender.Male
                      ? currentmColor = activeButtonColor
                      : currentmColor = inActiveButtonColor,
                  cardChild: ContainerFace(
                    myicon: FontAwesomeIcons.mars,
                    myText: 'MALE',
                  ),
                ),
                ReusableCard(
                  //color: currentfColor,
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.Female;
                      print('Female color changed');
                    });
                  },
                  myMargin: 15,
                  myHeight: smallContainerHeight,
                  myWidth: smallContainerWidth,
                  color: selectedGender == Gender.Female
                      ? currentfColor = activeButtonColor
                      : currentfColor = inActiveButtonColor,

                  cardChild: ContainerFace(
                    myicon: FontAwesomeIcons.venus,
                    myText: 'FEMALE',
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 10,
            ),

            ReusableCard(
              myMargin: 5,
              myHeight: bigContainerHeight,
              myWidth: bigContainerWidth,
              color: Theme.of(context).colorScheme.secondary,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: TextTitle,
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //////////// to make 180 and cm on same line  ///////////////////////
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        Height.toString(),
                        style: NumberingTitle,
                      ),
                      Text(
                        'cm',
                        style: TextStyle(fontSize: 20, color: textcolor),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Color(0xFFB6B9C7),
                      inactiveTrackColor: Color(0XFF8D8E98),
                      thumbColor: Colors.red,
                      overlayColor: Color(0x29EB1555),
                    ),
                    child: Slider(
                      value: Height.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                          Height = newValue.round();
                        });
                      },
                      min: 120, max: 220,
                      //activeColor: Colors.white,
                      //inactiveColor: Color(0XFF8D8E98),
                      //thumbColor: Colors.red,
                      //overlayColor: Color(0xff8D8E99),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                ReusableCard(
                  myMargin: 15,
                  myHeight: smallContainerHeight,
                  myWidth: smallContainerWidth,
                  color: Theme.of(context).colorScheme.secondary,
                  // cardChild: Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Text('WEIGHT',style: TextTitle,),
                  //     SizedBox(height: 10,),
                  //     Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       crossAxisAlignment: CrossAxisAlignment.baseline,
                  //       textBaseline: TextBaseline.alphabetic,
                  //       children: [
                  //         Text(weight.toString(),style: NumberingTitle,),
                  //         Text('Kg',style: TextStyle(fontSize:20,color: textcolor),),
                  //
                  //       ],
                  //     ),
                  //     Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         FloatingActionButton(
                  //           backgroundColor: Color(0xFF4C4F5E),
                  //           onPressed: () { setState(() {
                  //             weight-=5;
                  //           }); },
                  //           child: Icon(FontAwesomeIcons.minus,color: Colors.white,),
                  //         ),
                  //
                  //         SizedBox(width: 10,),
                  //
                  //         FloatingActionButton(
                  //           backgroundColor: Color(0xFF4C4F5E),
                  //           onPressed: () { setState(() {
                  //              weight+=5;
                  //           }); },
                  //           child: Icon(Icons.add,color: Colors.white,),
                  //         ),
                  //       ],
                  //     )
                  //   ],
                  //
                  // ),
                  cardChild: DetailedCF(
                    title: 'WEIGHT',
                    data: weight,
                    unit: 'kg',
                    herotag: 'bt1',
                    Minus: () {
                      setState(() {
                        weight -= 1;
                      });
                    },
                    Add: () {
                      setState(() {
                        weight += 1;
                      });
                    },
                  ),
                ),
                ReusableCard(
                  myMargin: 15,
                  color: Theme.of(context).colorScheme.secondary,
                  myHeight: smallContainerHeight,
                  myWidth: smallContainerWidth,
                  // cardChild: Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Text(
                  //       'AGE',
                  //       style: TextStyle(fontSize: 20, color: textcolor),
                  //     ),
                  //     SizedBox(
                  //       height: 10,
                  //     ),
                  //     Text(
                  //       age.toString(),
                  //       style: NumberingTitle,
                  //     ),
                  //     Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         FloatingActionButton(
                  //           backgroundColor: Color(0xFF4C4F5E),
                  //           onPressed: () {
                  //             setState(() {
                  //               age -= 1;
                  //             });
                  //           },
                  //           child: Icon(FontAwesomeIcons.minus),
                  //         ),
                  //         SizedBox(
                  //           width: 10,
                  //         ),
                  //         FloatingActionButton(
                  //           backgroundColor: Color(0xFF4C4F5E),
                  //           onPressed: () {
                  //             setState(() {
                  //               age += 1;
                  //             });
                  //           },
                  //           child: Icon(Icons.add),
                  //         ),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                  cardChild: DetailedCF(
                    title: 'AGE',
                    data: age,
                    unit: '',
                    herotag: 'bt2',
                    Minus: () {
                      setState(() {
                        age -= 1;
                      });
                    },
                    Add: () {
                      setState(() {
                        age += 1;
                      });
                    },
                  ),
                ),
              ],
            ),

            SizedBox(height: 10,),

            BottomButton(title:'Calculate Your BIM', ontap: () { setState(() {
              Calculator_Brain c= Calculator_Brain(weight: weight, height: Height);
              //Navigator.pushNamed(context, '/calculatePage');
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ResultPage(bmi: c.CalculateBmi(), bmiValue: c.bmiResult(), bmiText: c.bmiText())) );
            }); },),

            SizedBox(height: 10,),
            // Container(
            //   height: 60,
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(20),
            //     color: bottomButtonColor,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}


//                        MISSED NOTES:

//            1-
//            2-
//            3-
//            4-
//            5-
//            6- how to navigate and send data calculated to the result page// end of video
//            7- 
