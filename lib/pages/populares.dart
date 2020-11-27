import 'package:DeliveryApp/pages/class/produtos.dart';
import 'package:DeliveryApp/pages/detalles.dart';
import 'package:flutter/material.dart';

class PopularesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Populares> populares = [
      Populares(title: 'Pizza Clásica', subtitle: 'Salca clásica de la casa', precio:  '\$12.58', assets: 'assets/pizza_clasica.png', banner: 'assets/pizzabanner.png'),
      Populares(title: 'Hamburguesa mix', subtitle: 'doble carne con queso', precio:  '\$12.58', assets: 'assets/hamburguesa.png', banner:'assets/burgerbanner.png'),

    ];
    final Color azul = Color(0xff153E73);

    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Productos populares',
                style: TextStyle(
                    color: azul, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: 250,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: List.generate(
                  populares.length, (i) => _MenuButton(i, populares[i])),
            ),
          ),
        )
      ],
    );
  }
}

class _MenuButton extends StatelessWidget {
  final int index;
  final Populares item;
  final Color azul = Color(0xff153E73);

  _MenuButton(this.index, this.item);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
         Navigator.pushReplacement(
            context,
            PageRouteBuilder(
                pageBuilder: (_, __, ___) => DetallesPage(populares: item),
                transitionDuration: Duration(milliseconds: 0)));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        padding: EdgeInsets.all(10),
        width: 170,
        height: 220,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black12.withOpacity(0.05),
                  spreadRadius: 5,
                  blurRadius: 5)
            ]),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Icon(Icons.favorite_border, color: Colors.grey)],
              ),
            ),
            Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Color(0xff209BD0).withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 10),
                  ],
                  image: DecorationImage(image: AssetImage(item.assets))),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  item.title,
                  style: TextStyle(fontSize: 12),
                ),
                Text(item.subtitle, style: TextStyle(fontSize: 7)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      item.precio,
                      style: TextStyle(
                          fontSize: 14,
                          color: azul,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Icon(Icons.arrow_forward_ios, size: 14,color: azul,),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: <BoxShadow>[
                           
                              BoxShadow(
                                  color: Colors.black12.withOpacity(0.05),
                                  spreadRadius: 2,
                                  blurRadius: 2),
                            
                          ]),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
