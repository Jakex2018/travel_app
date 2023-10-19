import 'package:flutter/material.dart';
import 'package:travel_app/screen/welcome/components/body.dart';

class ScreenWelcome extends StatelessWidget {
  const ScreenWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: BodyWelcome(),
    );
  }
}

