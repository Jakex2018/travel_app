import 'package:flutter/material.dart';
import 'package:travel_app/components/category_list.dart';
import 'package:travel_app/screen/home/component/city_card_content.dart';
import 'package:travel_app/screen/home/component/home_city_card_content.dart';
///import 'package:travel_app/model/city.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          HomeCityCardContent(width: 150, height: 180,),
          CategoryList(),
          CityCardContent()
        ],
      ),
    );
  }
}