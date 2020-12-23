import 'dart:math';

import 'package:flutter/material.dart';

class CalculatorBrain{

  CalculatorBrain({this.height,this.weight}); 
   final int height;
   final int weight;
   double _bmi;

   String calculateBMI(){
     _bmi = weight / pow(height/100, 2);
     return _bmi.toStringAsFixed(1);
   }

   String getResult(){
     if (_bmi>=25) {
       return 'OverHeight';
     } else if(_bmi >18){
       return 'Normal';
     } else {
       return 'UnderWeight';
     }
   }

   String getInterpretation(){
     if (_bmi >=25) {
       return 'You have a higher than normal body weight';
     }else if(_bmi >=18.5){
       return 'You have normal body weight.Good JOB';
     }else{
       return 'You have lower than normal body weight';
     }
   }
}