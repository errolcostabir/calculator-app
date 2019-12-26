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
  int weight = 60;
  int age=15;
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

          title: Text('BMI CALCULATOR',textAlign: TextAlign.center,),
          
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
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          thumbColor: Color(0xFF61CA87),
                          overlayColor: Color(0x29EB1555),
                          activeTrackColor: Colors.white,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 10.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 25.0)),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        // activeColor: Colors.white,
                        inactiveColor: Color(0xFF8D8E98),
                        onChanged: (double newValue) {
                          //print(newValue);
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusable(
                    colour: activeCardcolor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: labelTExtStyle,
                        ),
                        Text(
                          age.toString(),
                          style: knumberTextstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onpresed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onpresed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),

                            /* FloatingActionButton(
                              backgroundColor: Color(0xFF4C4F5E),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ), */
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Reusable(
                    colour: activeCardcolor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: labelTExtStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: knumberTextstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onpresed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onpresed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),

                            /* FloatingActionButton(
                              backgroundColor: Color(0xFF4C4F5E),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ), */
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
            ),
            Container(
              color: Color(0xFF61CA87),
              // color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomcontainerheight,
            )
          ],
        ));
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, this.onpresed});
  final IconData icon;
  final Function onpresed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onpresed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 36.0,
        height: 36.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
