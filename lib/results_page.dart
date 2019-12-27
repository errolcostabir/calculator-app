import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'bottombutton.dart';
class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('YOUR RESULT',
              style: ktitletext,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Reusable(
              colour: activeCardcolor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('NORMAL',
                style: resulttextstyle,
                ),
                Text('18.3',
                style: resultpage,
                ),
                Text('your bmi is low!',
                style: para,
                textAlign: TextAlign.center,
                ),
              ],
              ),
            ),
          ),
          BottomButton(buttontitle: 'RE-CALCULATE',
          ontap: (){
            Navigator.pop(context);
          },
          )
        ],
      ),
    );
  }
}
