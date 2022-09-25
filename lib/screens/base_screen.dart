import 'package:fliphy/widgets/header_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BaseScreen extends StatelessWidget {
   final List<Widget> children;
  BaseScreen({required this.children});//

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color:  Colors.black,
      child: SafeArea(
        child: Column(
          crossAxisAlignment:  CrossAxisAlignment.stretch,
          children: [
            Headerwidget(),
            ...children // childern von beasScreen zur hin zufügen

          ],

        ),
      ),

    );
  }
}
