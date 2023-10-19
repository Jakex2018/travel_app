import 'package:flutter/material.dart';
import 'package:travel_app/components/star_info_item.dart';
import 'package:travel_app/components/welcome_title.dart';
import 'package:travel_app/constant.dart';
import 'package:travel_app/model/city.dart';
import 'package:travel_app/screen/travel/screen_travel.dart';
class CityCard extends StatelessWidget {
  const CityCard({
    super.key, required this.image, required this.name,
  });
  final String image,name;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenTravel(selectedCity: City(name, image),),));
      },
      child: Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(image,
            width: MediaQuery.of(context).size.width*.93 ,)),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: aDefaultPadding/2),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    WelcomeTitle(title: name, fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15, textDecoration: TextDecoration.none),
                    const StarInfoItem(color: Colors.yellow,)
                  ],
                ),
                 const Icon(Icons.more_vert,color: kPrimaryColor,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}