import 'package:flutter/material.dart';
import 'package:travel_app/components/button_one.dart';
import 'package:travel_app/constant.dart';

class IconAndButton extends StatelessWidget {
  const IconAndButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(Icons.bookmark, color: kPrimaryColor,),
        ),
        ButtonOne(title: 'Buy Now', color: Colors.white, weight: FontWeight.bold, fontSize: 20, paddingX:70, paddingY: 15, colorTwo:kPrimaryColor)
      ],
    );
  }
}

