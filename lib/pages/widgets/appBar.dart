import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10),
              margin: EdgeInsets.zero,
              height: 35,
              width: 130,
              child: Row(
                children: [
                  SvgPicture.asset('assets/search.svg'),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Buscar',
                    style: TextStyle(fontSize: 12, color: Colors.black12),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'Inicio',
              style: TextStyle(
                  color: Color(0xff5117AC),
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Container(
          child: Row(
            children: [
              SvgPicture.asset('assets/noti.svg'),
              SizedBox(width: 10),
              SvgPicture.asset('assets/descuento.svg'),
            ],
          ),
        )
      ],
    );
  }
}
