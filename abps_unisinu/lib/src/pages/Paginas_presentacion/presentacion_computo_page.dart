import 'package:flutter/material.dart';

class PresentacionComputoPage extends StatelessWidget {
  Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Image(
              image: AssetImage("assets/FondoComputo.png"),
              fit: BoxFit.fill,
              width: size.width,
              height: size.height,
            ),
            SafeArea(child: body(context)),
          ],
        ),
      ),
    );
  }

  Widget body(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(height: size.width * 0.14),
        agregarLogoYtema(context),
        SizedBox(height: size.height * 0.1),
        integrantes(context),
        SizedBox(height: size.height * 0.07),
        botonSubmit(context),
      ],
    );
  }

  Widget agregarLogoYtema(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 135,
              height: 135,
              child: Image(image: AssetImage("assets/LogoSinuBlanco.png")),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Controladores",
              style: TextStyle(color: Colors.white, fontSize: 20),
            )
          ],
        ),
      ],
    );
  }

  Widget integrantes(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Integrantes",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          SizedBox(height: 8),
          Container(width: 140, child: Divider(color: Colors.white)),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    "Juan Barraza Ozuna",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Sergio Vega Martinez",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget botonSubmit(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 60.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: size.width * 0.8,
              height: size.height * 0.08,
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("body_computo");
                },
                shape: StadiumBorder(),
                color: Colors.white,
                child: Text(
                  "Ver proyecto",
                  style: TextStyle(
                      color: Color.fromRGBO(229, 41, 62, 1),
                      fontSize: size.width * 0.05),
                ),
              ))
        ],
      ),
    );
  }
}
