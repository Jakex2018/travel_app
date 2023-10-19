import 'package:flutter/material.dart';
import 'package:travel_app/components/welcome_title.dart';
import 'package:travel_app/constant.dart';
class ButtonWelcome extends StatelessWidget {
  const ButtonWelcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width * 0.82,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(20)
      ),
      child: const Center(child: WelcomeTitle(title: 'Get Started', fontWeight: FontWeight.bold, color: kbackgroundColor, fontSize: 25, textDecoration: TextDecoration.none)),
    );
  }
}