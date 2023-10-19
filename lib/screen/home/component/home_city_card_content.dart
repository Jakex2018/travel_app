import 'package:flutter/material.dart';
import 'package:travel_app/constant.dart';
import 'package:travel_app/model/city.dart';
import 'package:travel_app/model/city_details.dart';
import 'package:travel_app/screen/home/component/home_city_card.dart';

class HomeCityCardContent extends StatelessWidget {
  const HomeCityCardContent({
    super.key,
    this.icon,
    required this.width,
    required this.height,
    this.name,
    this.cityDetails,
    this.image,
  });
  final String? name, image;
  final Icon? icon;
  final double width, height;
  final CityDetails? cityDetails;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: aDefaultPadding * 0.7, vertical: aDefaultPadding - 10),
        child: Row(
          children: [
            ...(cityDetails == null
                ? cityUSA
                    .map((city) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: HomeCityCard(
                            name: city.name,
                            icon: icon ??
                                const Icon(
                                  Icons.bookmark_outline_outlined,
                                  color: kPrimaryColor,
                                ),
                            width: width,
                            height: height,
                            image: city.image,
                            overlay: true,
                            capture: false,
                            onTap: () {},
                          ),
                        ))
                    .toList()
                : cityDetails?.images
                        .asMap()
                        .entries
                        .map((entry) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: HomeCityCard(
                                icon: icon ??
                                    const Icon(
                                      Icons.search,
                                      color: Colors.transparent,
                                    ),
                                width: width,
                                height: height,
                                image: entry.value,
                                overlay: entry.key == 2,
                                capture: entry.key == 2,
                                onTap: () {
                                  if (entry.key == 2) {
                                    showDialog(context: context, builder: (context) {
                                      return AlertDialog(
                                        actions: [
                                          Image.asset(entry.value,fit: BoxFit.cover,)
                                        ],
                                      );
                                    },);
                                  }
                                },
                              ),
                            ))
                        .toList()
                        .cast<Widget>() ??
                    []),
          ],
        ),
      ),
    );
  }
}
