import 'package:flutter/material.dart';
import 'package:travel_app/screen/welcome/components/body_elements.content.dart';
import 'package:travel_app/screen/welcome/components/body_image_container.dart';

class BodyWelcome extends StatelessWidget {
  const BodyWelcome({
    Key? key,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        BodyImageContainer(),
        BodyElementsContent(),
      ],
    );
  }
}




