import 'package:flutter/material.dart';
import 'package:travel_app/constant.dart';


class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
        height: 58,
        decoration: const BoxDecoration(
          color: kbackgroundColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)
          )
        ),
        child: ClipPath(
          clipper: CurvedBottomClipper(),
          child: Container(
            height: 58,
            decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)
            )
          ),
          child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BottomNavBarIcons(IconTitle: Icon(Icons.monetization_on,color: Colors.black54,size: 30,)),
            BottomNavBarIcons(IconTitle: Icon(Icons.favorite_border_rounded,color: Colors.black54,size: 30),),
            BottomNavBarIcons(IconTitle: Icon(Icons.notifications_active_rounded,color: Colors.black54,size: 30),),
            BottomNavBarIcons(IconTitle: Icon(Icons.credit_card_off_outlined,color: Colors.black54,size: 30),)
          ],
        ) ,
          ),
        )
      ),
      
      ]
    );
  }
}

class CurvedBottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width / 2 - 50, 0); // Ajusta el ancho de la curva
    path.cubicTo(
      size.width / 2 - 30, 30, // Control point 1
      size.width / 2 + 30, 30, // Control point 2
      size.width / 2 + 50, 0,   // Ajusta la altura y el ancho
    );
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}


class BottomNavBarIcons extends StatelessWidget {
  const BottomNavBarIcons({
    // ignore: non_constant_identifier_names
    super.key, required this.IconTitle,
  });
  // ignore: non_constant_identifier_names
  final Widget IconTitle;
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){}, icon: IconTitle);
  }
}


/*
 */