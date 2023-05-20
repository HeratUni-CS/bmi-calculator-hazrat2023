import 'package:bmi_starting/components/bottom_button.dart';
import 'package:bmi_starting/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
    String result;
    String bmi;
    String interpretation;
    ResultsPage({required this.result,
    required this.bmi,
    required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                margin: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "YOUR RESULT",
                  style: KTitleTextStyle,
                ),
              ),
          ),
          Expanded(
              flex: 5,
            child: ReusableCard(
              colour: KActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    result,
                    style: KResultTextStyle,
                  ),
                  Text(
                    bmi,
                    style: KBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: KBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onPressed: (){
              Navigator.pop(context);
            },
          label: "RE-CALCULATE",
          ),
        ],
      ),
    );
  }
}
