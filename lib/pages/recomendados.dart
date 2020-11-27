import 'package:DeliveryApp/pages/class/produtos.dart';
import 'package:flutter/material.dart';

class RecomendadosPage extends StatelessWidget {
  final Color azul = Color(0xff153E73);

  final List<Recomendados> recomendados = [
    Recomendados(
        categoria: 'Naturales',
        title: 'Malteadas tropicales',
        subtitle: 'Elaborado con jugos naturales',
        precio: '\$12.58',
        banner: '',
        assets: 'assets/malteada.png'),
    Recomendados(
        categoria: 'Naturales',
        title: 'Jugos Naturales',
        subtitle: 'Elaborado con la mejor fruta',
        precio: '\$20.58',
        banner: '',
        assets: 'assets/jugo.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recomendados',
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
            height: 150,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: List.generate(
                  recomendados.length, (i) => _MenuButton(i, recomendados[i])),
            ),
          ),
        )
      ],
    );
  }
}

class _MenuButton extends StatelessWidget {
  final int index;
  final Recomendados item;
  final Color azul = Color(0xff153E73);

  _MenuButton(this.index, this.item);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          padding: EdgeInsets.all(10),
          height: 100,
          width: 240,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              Expanded(child: Container()),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          item.categoria,
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.favorite,
                          color: Color(0xffF02756),
                        )
                      ],
                    ),
                    Text(
                      item.title,
                      style: TextStyle(color: azul, fontSize: 10),
                    ),
                    Text(
                      item.subtitle,
                      style: TextStyle(color: Colors.grey, fontSize: 7),
                    ),
                    Row(
                      children: [
                        Text(
                          item.precio,
                          style: TextStyle(
                              fontSize: 14,
                              color: azul,
                              fontWeight: FontWeight.bold),
                        ),
                         SizedBox(
                          width: 30,
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 10,
                            color: azul,
                          ),
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
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Image.asset(item.assets),
        )
      ],
    );
  }
}
