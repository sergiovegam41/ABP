import 'package:abps_unisinu/src/pages/Paginas_presentacion/presentacion_computo_page.dart';
import 'package:abps_unisinu/src/pages/Paginas_presentacion/presentacion_matematicas_page.dart';
import 'package:abps_unisinu/src/pages/contenido_abp/computo_body.dart';
import 'package:abps_unisinu/src/pages/contenido_abp/matematica_body.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> rutas() {
  return <String, WidgetBuilder>{
    //---------------| MATEMATICAS |-----------------------
    "body_matematicas": (_) => MatematicasBodyPage(),
    "presentacion_matematicas": (_) => PresentacionMatematicasPage(),

    //---------------| COMPUTO |-----------------------
    "body_computo": (_) => ComputoBodyPage(),
    "presentacion_computo": (_) => PresentacionComputoPage(),
  };
}
