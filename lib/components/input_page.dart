

import 'package:bmi_calculator/screens/calculator_brain.dart';
import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bottom_button.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import '../screens/result_page.dart';
import 'round_button.dart';


enum Gender{
male,
female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}


class _InputPageState extends State<InputPage> {


   Color maleColor = kInActiveColorOfCards;
   Color femaleColor = kInActiveColorOfCards;

   Gender selectedGender ;
   
   // For Slider
   int height = 180;
   int weight = 60 ;
   int age = 15 ; 

   //FloatingButton 

     

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, // For Body Part
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[     

              Expanded(
                child:Padding(padding: EdgeInsets.all(15.0),
                  child: ReusableCard(
                    onPress: (){
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                   colour: selectedGender == Gender.male ? kColorOfCards : kInActiveColorOfCards,
                   cardChild: DesignIcons(
                     iconData: FontAwesomeIcons.mars,
                     genderName: 'Male',
                   ),
                 ),
               ),
      ),
    
              Expanded(
                child: Padding(padding: EdgeInsets.all(15.0),
                child: ReusableCard(
                  onPress: (){
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                    colour: selectedGender == Gender.female ? kColorOfCards : kInActiveColorOfCards,
                    cardChild: DesignIcons(
                       iconData: FontAwesomeIcons.venus,
                       genderName: 'Female',
                    ),
                  ),
                
     ),
   ),
       
            ],
           ),
          ),
           Expanded(
             child: Padding(padding: EdgeInsets.all(15.0),
            child: ReusableCard(
              colour: kColorOfCards ,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('HEIGHT',style:kLabelTextStyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(height.toString(),
                      style: kNumberTextStyle,
                      ),
                      Text('cm',
                      style: kLabelTextStyle,
                      ),
                    ],
                  ),
                 
               
                  
                   Slider(
                        value: height.toDouble(),
                        min: 100.0,
                        max: 200.0,
                        activeColor: Colors.red,
                        inactiveColor: Colors.teal,
                        onChanged: (double  newValue){
                          setState(() {
                            height=newValue.round();
                          });
                        },

                        
                        ),
                ],
              ),
            ),
        ),
       ),

          Expanded(
            child: Row(
            children: <Widget>[

              Expanded(
                child: Padding(padding: EdgeInsets.all(15.0),
              child: ReusableCard(
                colour: kColorOfCards,
               cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('WEIGHT',style: kLabelTextStyle,),
                  Text(weight.toString(),style: kNumberTextStyle,),
                  Row(
                    mainAxisAlignment : MainAxisAlignment.center,
                    children: [
                      RoundIconButton(
                        icon: FontAwesomeIcons.plus,
                        onPressed: (){
                        setState(() {
                          
                            weight++;
                          
                        });
                        },
                      ),
                      RoundIconButton(
                        icon: FontAwesomeIcons.minus,
                        onPressed: (){
                          setState(() {
                              weight--;
                          });
                        },
                      ),
                    ],
                  ),
                ],
               ),
              ),
        ),
       ),
              Expanded(
                child: Padding(padding: EdgeInsets.all(15),
              child: ReusableCard(
                colour: kColorOfCards,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('AGE',style: kLabelTextStyle,),
                    Text(age.toString(),style: kNumberTextStyle,),
                    Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                       RoundIconButton(
                        icon: FontAwesomeIcons.plus,
                        onPressed: (){
                         setState(() {
                           age++;
                         });
                        },
                       ),
                       RoundIconButton(
                         icon: FontAwesomeIcons.minus,
                         onPressed: (){
                           setState(() {
                             age--;
                           });
                         },
                       ),
                        ], 
                      ),
                    ],
                  ),
                ),
              ),
        ),
     ],
   ),
 ),
          BottomButton(buttonTitle: 'CALCULATE',
          onTap: (){

            CalculatorBrain calc= CalculatorBrain(height: height , weight: weight); 

            Navigator.push(context, 
            MaterialPageRoute(
              builder: (context) => ResultPage(
                bmiResult: calc.calculateBMI(),
                resultText: calc.getResult(),
                interpretation: calc.getInterpretation(),
            ),
            ),
            );
            
          },),
        ],         
      ),
    );
 }
}

