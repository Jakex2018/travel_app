import 'package:flutter/material.dart';
import 'package:travel_app/components/overlay_app.dart';
class BodyImageContainer extends StatelessWidget {
  const BodyImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.asset('assets/images/miami.jpg',fit: BoxFit.cover,),
      ),
      const Positioned(
          top: 0,
          left:0,right: 0,bottom: 0,
          child: OverlayApp(opacity: 0.4,))
      ]
    );
  }
}
