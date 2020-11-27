import 'package:flutter/material.dart';

class Bottom extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {

    final path = Path();

    final Offset p0 = Offset(size.width, size.height);
    final Offset p1 = Offset(size.width*0.85, size.height/2 );
    final Offset p2 = Offset(size.width, 0 );

    path.moveTo(0, 0);
    path.lineTo(0, size.height);
   // path.lineTo(size.width, size.height);
    path.lineTo(p0.dx, p0.dy);
    path.quadraticBezierTo(p1.dx, p1.dy, p2.dx, p2.dy);
    
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

