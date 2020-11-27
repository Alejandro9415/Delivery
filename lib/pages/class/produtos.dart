import 'package:flutter/material.dart';


class Categorias {
  final String categorias;
  final Color color;
  final Widget widget;

  Categorias(
      {@required this.color, @required this.categorias, @required this.widget});
}

class Populares {
  final String title;
  final String subtitle;
  final String precio;
  final String assets;
  final String banner;

  Populares(
      {@required this.title,
      @required this.subtitle,
      @required this.precio,
      @required this.banner,
      @required this.assets,});
}

class Recomendados {
  final String categoria;
  final String title;
  final String subtitle;
  final String precio;
  final String assets;
  final String banner;

  Recomendados(
      {@required this.categoria,
      @required this.title,
      @required this.subtitle,
      @required this.precio,
      @required this.assets,
      @required this.banner,});
}

class Ingredientes {
  final String assets;

  Ingredientes({@required this.assets});
}
