import 'package:flutter/material.dart';
import 'package:travel_app/model/city.dart';
import 'package:travel_app/screen/home/component/city_cart.dart';
import 'package:travel_app/screen/travel/screen_travel.dart';
class CityCardContent extends StatefulWidget {
  const CityCardContent({
    super.key,
  });

  @override
  State<CityCardContent> createState() => _CityCardContentState();
}

class _CityCardContentState extends State<CityCardContent> {
  City? selectedCity;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 7,top: 10),
      child: Column(
        children: [
          for(City city in cityUSA )
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedCity = city;
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenTravel(selectedCity: selectedCity!),));
                  },
                  child: CityCard(name:city.name, image: city.image)),
              ),
        ],
      ),
    );
  }
}