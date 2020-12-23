import 'package:flutter/material.dart';


class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon,@required this.onPressed});
  
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child:  Icon(icon),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(width: 85.0, height: 50.0,),
      shape: CircleBorder(),
      fillColor: Colors.red
    );
  }
}





 