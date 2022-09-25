import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Headerwidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: const [
        
        Text("fliphy",style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontSize: 25),)

      ],
      
    );
  }
  
  
  
}