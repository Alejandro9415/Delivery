import 'package:DeliveryApp/pages/detalles.dart';
import 'package:DeliveryApp/pages/home.dart';
import 'package:DeliveryApp/pages/populares.dart';
import 'package:DeliveryApp/pages/recomendados.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery App',
      theme: ThemeData(
        fontFamily: 'Poppins'
      ),
      home: HomePage(),
      routes: {
        'home': (_)=>HomePage(),
        'detalles': (_)=>DetallesPage(),
      },
    );
  }
}