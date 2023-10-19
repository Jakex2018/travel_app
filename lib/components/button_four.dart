import 'package:flutter/material.dart';
import 'package:travel_app/constant.dart';
class ButtonFour extends StatelessWidget {
  const ButtonFour({
    super.key, required this.icon,
  });
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.15,
      height: MediaQuery.of(context).size.height*0.15,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: kBorderColor,width: 2,
        ),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Center(child: icon)
    );
  }
}