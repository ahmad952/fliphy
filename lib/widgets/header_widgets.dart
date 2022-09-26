import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

import '../constants.dart';

class Headerwidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      
      children:  [
        Lottie.asset('assets/96943-app-loader.json', height: 50,repeat: !DISABLE_ANIMATION ),// repeat: !DISABLE_ANIMATION damit zwichen inwicklung nicht bewegen
     const Text("fliphy",style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontSize: 25),)

      ],
      
    );
  }
  
  
  
}