import 'dart:math';

import 'package:DeliveryApp/pages/widgets/clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class BottonNavigationPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: ClipPath(
                clipper: Bottom(),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black12),
                     borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset('assets/home.svg'),
                      SvgPicture.asset('assets/shop.svg'),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(10),
              width: 54,
              height: 54,
              child: SvgPicture.asset('assets/cart.svg'),
              decoration: BoxDecoration(
                color: Color(0xff5117AC),
                shape: BoxShape.circle,
              ),
            ),
            Flexible(
              child: Transform.rotate(
                angle: pi * 5,
                child: ClipPath(
                  clipper: Bottom(),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
                      color: Colors.white,
                      border: Border.all(color: Colors.black12),
                    ),
                     child: Transform.rotate(
                angle: pi * -5,
                       child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                        Icon(Icons.favorite_border, color: Colors.grey,),
                        Image.asset('assets/perfil.png')
                    ],
                  ),
                     ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  }
}