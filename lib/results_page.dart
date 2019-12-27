import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'bottombutton.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({this.bmiResult, this.resultText});
  final String bmiResult;
  final String resultText;
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        centerTitle: true,
        title: Text(' '),
      ), 
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomCenter,
              child: Text(
                'YOUR RESULT',
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
                  Text(
                    resultText,
                    style: resulttextstyle,
                  ),
                  Text(
                    bmiResult,
                    style: resultpage,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttontitle: 'RE-CALCULATE',
            ontap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
