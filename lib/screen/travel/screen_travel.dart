import 'package:flutter/material.dart';
import 'package:travel_app/model/city.dart';
import 'package:travel_app/screen/travel/body_travel.dart';

class ScreenTravel extends StatelessWidget {
  const ScreenTravel({super.key, required this.selectedCity});
  final City selectedCity;
  @override
  Widget build(BuildContext context) {
    return  Material(
      // ignore: unnecessary_null_comparison
      child: selectedCity != null?
         BodyTravel(selectedCity: selectedCity,):const Center(child: Text('error'),)
    );
  }
}

