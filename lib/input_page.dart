import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';


const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);
const inActiveCardColor = Color(0xFF1D1F33);

enum Gender{
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key:key);
  @override
    _InputPageState createState() => _InputPageState();
}


class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    var selectedGender;
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ReusableCard(
                        onPressed: () {
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        },
                        colour: (selectedGender == Gender.male)
                            ? activeCardColor
                            : inActiveCardColor,
                        child: iconContent(
                          iconData: FontAwesomeIcons.mars,
                          label: "MALE",
                        ),),
                    ),
                    Expanded(
                      child: ReusableCard(
                        onPressed: () {
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        },
                        colour: (selectedGender == Gender.female)
                            ? activeCardColor
                            : inActiveCardColor,
                        child: iconContent(
                          iconData: FontAwesomeIcons.venus,
                          label: "FEMALE",
                        ),
                      ),
                    ),
                  ],
                )),
            Expanded(
              child: ReusableCard(
                colour: activeCardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              color: bottomContainerColor,
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }


}
