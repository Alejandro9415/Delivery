
import 'package:DeliveryApp/pages/class/produtos.dart';
import 'package:DeliveryApp/pages/recomendados.dart';
import 'package:DeliveryApp/pages/widgets/appBar.dart';
import 'package:DeliveryApp/pages/widgets/bottonNavigation.dart';
import 'package:DeliveryApp/pages/populares.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Categorias> categorias = [
      Categorias(
          categorias: 'Tacos',
          color: Color(0xffD0E6A5),
          widget: SvgPicture.asset('assets/tacos.svg')),
      Categorias(
          categorias: 'frias',
          color: Color(0xff86E3CE),
          widget: SvgPicture.asset('assets/frias.svg')),
      Categorias(
          categorias: 'Burger',
          color: Color(0xffFFDD95),
          widget: SvgPicture.asset('assets/burger.svg')),
      Categorias(
          categorias: 'Pizza',
          color: Color(0xffFFACAC),
          widget: SvgPicture.asset('assets/pizza.svg')),
      Categorias(
          categorias: 'Burritos',
          color: Color(0xffCCAAD9),
          widget: SvgPicture.asset('assets/burritos.svg')),
    ];

    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      appBar: CustomAppBar(
        height: 90,
        child: AppBarPage(),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          child: Column(
            children: [_Categorias(categorias), PopularesPage(), RecomendadosPage()],
          ),
        ),
      ),
      bottomNavigationBar: BottonNavigationPage()
    );
  }
}

class _Categorias extends StatelessWidget {
  final List<Categorias> categories;
  final Color azul = Color(0xff153E73);

  _Categorias(this.categories);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Explorar categorias',
                style: TextStyle(
                    color: azul, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Ver todas',
                style: TextStyle(color: Color(0xffCFCFCF)),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 120,
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: List.generate(
                categories.length, (i) => _MenuButton(i, categories[i])),
          ),
        )
      ],
    );
  }
}

class _MenuButton extends StatelessWidget {
  final int index;
  final Categorias item;
  final Color azul = Color(0xff153E73);

  _MenuButton(this.index, this.item);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.all(10),
          width: 80,
          height: 80,
          child: item.widget,
          decoration: BoxDecoration(
              color: item.color, borderRadius: BorderRadius.circular(20)),
        ),
        Text(
          item.categorias,
          style: TextStyle(color: azul, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}

class CustomAppBar extends PreferredSize {
  final Widget child;
  final double height;

  CustomAppBar({@required this.child, this.height = kToolbarHeight});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: preferredSize.height,
        alignment: Alignment.center,
        child: child,
        decoration: BoxDecoration(color: Colors.white, boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12.withOpacity(0.05),
            offset: Offset(0, 7),
            blurRadius: 12,
          )
        ]),
      ),
    );
  }
}
