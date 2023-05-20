import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  void Function() onPressed;
  String label;
  BottomButton({required this.onPressed, required this.label});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,

      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        color: BOttomContainerColor,
        width: double.infinity,
        height: KBottomContainerHeight,
        child: Center(
          child: Text(label,
              style: KLargeButtonStyle),
        ),
      ),
    );
  }
}
