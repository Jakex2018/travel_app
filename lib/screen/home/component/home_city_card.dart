import 'package:flutter/material.dart';
import 'package:travel_app/components/overlay_app.dart';
import 'package:travel_app/components/welcome_title.dart';
import 'package:travel_app/model/city.dart';

class HomeCityCard extends StatelessWidget {
  const HomeCityCard({
    super.key, this.name, required this.icon, required this.width, required this.height, this.selectedCity, required this.image, required this.overlay, required this.capture, required this.onTap,
  });

  final String image;
  final String? name;
  final Icon icon;
  final City? selectedCity;
  final double width , height;
  final bool overlay,capture;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
        width: width,
        child: GestureDetector(
          onTap:onTap,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  selectedCity?.image ?? image,
                  fit: BoxFit.cover,
                  height: height,
                )),
              if(overlay)
              const Positioned(
                top: 0,left: 0,right: 0,bottom: 0,
                child: OverlayApp(opacity: 0.4,),
              ),
              Positioned(
                top: 15, right: 15,
                child: icon,
              ),
              Positioned(
                bottom:10,left:15,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: WelcomeTitle(title: name, fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25, textDecoration: TextDecoration.none)),
              ),
              if(capture)
              const Positioned(top: 28,left: 20,
                child: Center(child: WelcomeTitle(title: 'View', fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20, textDecoration: TextDecoration.none)),
              )
            ]
          ),
        ),
    );
  }
}
