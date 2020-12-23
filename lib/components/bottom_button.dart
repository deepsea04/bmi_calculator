import 'package:flutter/material.dart';
import 'constants.dart';


class BottomButton extends StatelessWidget {
 
 BottomButton ({this.onTap,this.buttonTitle});

 final Function onTap;
 final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Text(buttonTitle,style: kBottomLabelStyle,textAlign: TextAlign.center,),
   color: kColorOfBottom,
   margin: EdgeInsets.only(top : 10.0 ),
   width: double.infinity,
   height: kBottomContainerHeight,
 ),
    );
  }
}

