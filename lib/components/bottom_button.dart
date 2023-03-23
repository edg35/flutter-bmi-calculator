import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          color: kBottomContainer,
          margin: EdgeInsets.only(top: 10.0),
          width: double.infinity,
          height: kBottomContainerHeight,
          padding: EdgeInsets.only(bottom: 10.0),
          child: Center(
            child: Text(
              buttonTitle,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
    );
  }
}
