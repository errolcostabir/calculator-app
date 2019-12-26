
//import 'input_page.dart';
//import 'main.dart';
import 'package:flutter/material.dart';

const labelTExtStyle=TextStyle(fontSize: 18.0, color: Colors.white);
class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: labelTExtStyle,
        )
      ],
    );
  }
}
