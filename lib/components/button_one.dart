import 'package:flutter/material.dart';
import 'package:travel_app/components/welcome_title.dart';
import 'package:travel_app/constant.dart';

class ButtonOne extends StatelessWidget {
  const ButtonOne({
    super.key, required String title, required Color color, required FontWeight weight, required int fontSize, required int paddingX, required int paddingY, required Color colorTwo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: aDefaultPadding+10),
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(20)
        ),
        child: const Center(child: WelcomeTitle(title: 'Get Started', fontWeight: FontWeight.bold, color: kbackgroundColor, fontSize: 15, textDecoration: TextDecoration.none)),
      ),
    );
  }
}