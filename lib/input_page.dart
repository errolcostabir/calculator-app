import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedG;
  int height = 180;
  //Color malecardcolr = inactiveColor;
  // Color femaleacrdcolor = inactiveColor;

  /*  void updateColor(Gender seleG) {
    if (seleG==Gender.male) {
      if (malecardcolr == inactiveColor) {
        malecardcolr = activeCardcolor;
        femaleacrdcolor=inactiveColor;
      } else {
        malecardcolr = inactiveColor;
      }
    } else {
      if (femaleacrdcolor == inactiveColor) {
        femaleacrdcolor = activeCardcolor;
        malecardcolr=inactiveColor;
      } else {
        femaleacrdcolor = inactiveColor;
      }
    }
  }
 */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusable(
                    onpress: () {
                      setState(() {
                        selectedG = Gender.male;
                      });
                    },
                    colour: selectedG == Gender.male
                        ? activeCardcolor
                        : inactiveColor,
                    cardchild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: Reusable(
                    onpress: () {
                      setState(() {
                        selectedG = Gender.female;
                      });
                    },
                    colour: selectedG == Gender.female
                        ? activeCardcolor
                        : inactiveColor,
                    cardchild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
              child: Reusable(
                colour: activeCardcolor,
                cardchild: Column(
                  children: <Widget>[
                    Text(
                      'HEiGHT',
                      style: labelTExtStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: knumberTextstyle,
                        ),
                        Text(
                          'cm',
                          style: labelTExtStyle,
                        )
                      ],
                    ),
                    Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        //print(newValue);
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusable(colour: activeCardcolor),
                ),
                Expanded(
                  child: Reusable(colour: activeCardcolor),
                ),
              ],
            )),
            Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomcontainerheight,
            )
          ],
        ));
  }
}
