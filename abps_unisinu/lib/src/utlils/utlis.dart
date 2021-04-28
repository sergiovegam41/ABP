
import 'package:flutter/material.dart';


  alerta(BuildContext context,
    {bool code = true,
    String titulo,
    dynamic contenido,
    Widget acciones,
    bool dismissible,
    bool done,
    Widget onpress,
    Color colorTitulo,
    Color colorContenido,
    bool weight = false}) {
  return showDialog(
      barrierDismissible: dismissible ?? true,
      barrierColor: Colors.black54,
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color.fromRGBO(246, 245, 250, 1),
          title: Container(
              decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Text(
                  '${titulo ?? 'Alerta'}',
                  style: TextStyle(color: colorTitulo ?? Colors.grey),
                )),
              )),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                    child: Container(
                      width: double.infinity,
                      // height: size.width>450?200: size.height * 0.22,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            code == true
                                ? contenido
                                : Text('$contenido',
                                    style: TextStyle(
                                        color: colorContenido ?? Colors.grey,
                                        fontWeight: weight == false
                                            ? FontWeight.w400
                                            : FontWeight.bold))
                          ],
                        ),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: done == true
                            ? Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          child: Icon(Icons.arrow_back,
                                              color: Colors.white),
                                          width: 50,
                                          height: 50,
                                          decoration: ShapeDecoration(
                                              color: Colors.grey,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                        )),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: onpress),
                                ],
                              )
                            : done == false
                                ? Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              child: Icon(Icons.arrow_back,
                                                  color: Colors.white),
                                              width: 50,
                                              height: 50,
                                              decoration: ShapeDecoration(
                                                  color: Colors.grey,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                            )),
                                      ),
                                    ],
                                  )
                                : Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [acciones ?? Container()],
                                  ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      });
}
