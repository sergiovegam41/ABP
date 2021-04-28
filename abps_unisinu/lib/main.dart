import 'package:abps_unisinu/src/routes/rutas.dart';
import 'package:flutter/material.dart';

void main() => runApp(AbpUnisinu());

class AbpUnisinu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ABP PROJECT UNISINU',
      routes: rutas(),
      initialRoute: "presentacion_computo",
    );
  }
}
