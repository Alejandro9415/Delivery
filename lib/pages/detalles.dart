import 'package:DeliveryApp/pages/class/produtos.dart';
import 'package:flutter/material.dart';

class DetallesPage extends StatelessWidget {
  final Populares populares;

  final List<Ingredientes> ingredientes = [
    Ingredientes(assets: 'assets/casera.png'),
    Ingredientes(assets: 'assets/pan.png'),
    Ingredientes(assets: 'assets/lechuga.png'),
    Ingredientes(assets: 'assets/cebolla.png'),
  ];

  DetallesPage({this.populares});

  @override
  Widget build(BuildContext context) {
    final Color azul = Color(0xff153E73);
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 30, bottom: 20, left: 30, right: 30),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.black12, width: 1))
        ),
        child: Row(
          children: [
            Container(
              width: 220,
              height: 63,
              alignment: Alignment.center,
              child: Text('Ordenar ahora', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                colors: [
                  Color(0xff462E9A),
                  Color(0xff32AEBA),
                ],
              )),
            ),
            SizedBox(width: 30,),
            Text(this.populares.precio, style: TextStyle(color: azul, fontWeight: FontWeight.bold, fontSize: 30),),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: Banner(),
                  child: AspectRatio(
                    aspectRatio: 17 / 15,
                    child: Container(
                      width: double.infinity,
                      child: Image.asset(
                        this.populares.banner,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                SafeArea(
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () =>
                              Navigator.pushReplacementNamed(context, 'home'),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          this.populares.title,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Container()
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 55,
                  right: 50,
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Color(0xffF1395E), shape: BoxShape.circle),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Descripción',
                    style: TextStyle(
                        color: azul, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur',
                    style: TextStyle(color: azul, fontSize: 11),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Ingredientes',
                        style: TextStyle(
                            color: azul,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '10 ingredientes',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    height: 120,
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: List.generate(ingredientes.length,
                          (i) => _MenuButton(i, ingredientes[i])),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MenuButton extends StatelessWidget {
  final int index;
  final Ingredientes item;
  final Color azul = Color(0xff153E73);

  _MenuButton(this.index, this.item);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3),
      width: 100,
      height: 120,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          item.assets,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}

class Banner extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width * 0.03, size.height * 0.8,
        size.width * 0.2, size.height * 0.8);
    path.lineTo(size.width * 0.75, size.height * 0.8);
    path.quadraticBezierTo(
        size.width * 1.0, size.height * .8, size.width, size.height * 0.6);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
