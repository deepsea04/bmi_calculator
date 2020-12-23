import 'package:flutter/material.dart';

class DesignIcons extends StatelessWidget {
  DesignIcons ({this.genderName,this.iconData});
  
  final String genderName;
  final IconData iconData;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          color: Colors.white,
          size: 80.0,
        ),
        SizedBox(
          height: 14.0,
        ),
        Text(
          genderName,style: TextStyle(
          fontSize: 15.0,
          color: Color(0xFF8D8E98),
        ),)
      ],
    );
  }
}

