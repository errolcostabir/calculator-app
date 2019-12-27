import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  /*  const BottomButton({
    Key key,
  }) : super(key: key); */

  BottomButton({this.ontap, this.buttontitle});
  final Function ontap;
  final String buttontitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Center(
          child: Text(
            buttontitle,
            style: klargetextstyle,
          ),
        ),
        color: Color(0xFF61CA87),
        // color: Color(0xFFEB1555),
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: bottomcontainerheight,
      ),
    );
  }
}
