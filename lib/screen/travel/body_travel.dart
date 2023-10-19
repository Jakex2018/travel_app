import 'package:flutter/material.dart';
import 'package:travel_app/components/app_bar_travel.dart';
import 'package:travel_app/components/icon_and_button.dart';
import 'package:travel_app/components/star_info_item.dart';
import 'package:travel_app/components/welcome_title.dart';
import 'package:travel_app/constant.dart';
import 'package:travel_app/model/city.dart';
import 'package:travel_app/model/city_details.dart';
import 'package:travel_app/screen/home/component/home_city_card_content.dart';

class BodyTravel extends StatelessWidget {
  const BodyTravel({
    super.key,
    this.selectedCity,
  });
  final City? selectedCity;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
              child: Stack(fit: StackFit.expand, children: [
            Image.asset(
              selectedCity?.image??'',
              fit: BoxFit.cover,
            ),
            Positioned(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: aDefaultPadding),
                child: InkWell(
                  onTap: (){Navigator.pop(context);},
                  child: AppBarBuildTravel()),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: const BoxDecoration(
                    color: kbackgroundColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child:  Column(
                  children: [
                    CityAndStar(selectCity: selectedCity!,),
                    const CityDescription(),
                    HomeCityCardContent(
                        width: 90,
                        height: 80,
                        cityDetails: selectedCity != null
                            ? cityDetailsMap[selectedCity?.name]
                            : null),const SizedBox(height: 15,),
                    const IconAndButton()
                  ],
                ),
              ),
            ),
          ])),
        ],
      ),
    );
  }
}

class CityDescription extends StatelessWidget {
  const CityDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: aDefaultPadding),
      child: WelcomeTitle(
          title:
              'Lore bero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
          fontWeight: FontWeight.normal,
          color: Colors.black45,
          fontSize: 15,
          textDecoration: TextDecoration.none),
    );
  }
}

class CityAndStar extends StatelessWidget {
  const CityAndStar({
    super.key, required this.selectCity,
  });
  final City selectCity;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: aDefaultPadding, vertical: aDefaultPadding * 1.2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          WelcomeTitle(
              title: selectCity.name,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 20,
              textDecoration: TextDecoration.none),
          const StarInfoItem(color: Colors.yellow)
        ],
      ),
    );
  }
}
