import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../components/reuseable_card.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmiresult, @required this.interp, @required this.resultText});

  final String bmiresult;
  final String resultText;
  final String interp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kResultTitleText,
                ),
              ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kContainerBackground,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultText,
                  ),
                  Text(
                    bmiresult.toUpperCase(),
                    style: kBmiResultTextStyle,
                  ),
                  Text(
                    interp.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: kInterpTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: (){
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATE',
          )
        ],
      )
    );
  }
}
