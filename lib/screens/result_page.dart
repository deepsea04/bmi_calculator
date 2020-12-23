import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';



// ignore: must_be_immutable
class ResultPage extends StatelessWidget {
  ResultPage({ @required this.bmiResult,@required this.resultText,@required this.interpretation});

final String bmiResult;
final String resultText;
final String interpretation;

double avegare=10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
         Expanded(
           child: Container(
              padding: EdgeInsets.only(top : 15.0),
             child: Text('YOUR RESULT',style: kWeightCaseStyle,),
           ),
         ),
         Expanded(
           flex: 5,
           child : ReusableCard(colour: kColorOfCards,
           cardChild: Column(
             mainAxisAlignment : MainAxisAlignment.spaceEvenly,
             crossAxisAlignment : CrossAxisAlignment.center,
             children:<Widget> [
               Text(resultText.toUpperCase(),style: kResultTextStyle,),
               Text(bmiResult,style: kBMITextStyle,),
               Text(interpretation,style: kBodyTextStyle,textAlign: TextAlign.center,),
             ],
           ),
           ),
         ),
         BottomButton(
           buttonTitle:'RE-CALCULATE',
           onTap: (){

Navigator.pop(context);


         },
         ),
        ],
     ),
    );
  }
}