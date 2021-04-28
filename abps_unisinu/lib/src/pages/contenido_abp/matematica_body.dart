
import 'package:abps_unisinu/src/utlils/headers.dart';
import 'package:abps_unisinu/src/utlils/utlis.dart';
import 'package:flutter/material.dart';

class MatematicasBodyPage extends StatefulWidget {
  @override
  _MatematicasBodyPageState createState() => _MatematicasBodyPageState();
}

class _MatematicasBodyPageState extends State<MatematicasBodyPage> {
  Size size;
  int page = 0;
  int estrella=0;
  List<Widget> data=[];


  @override
  Widget build(BuildContext context) {
    
    data = [page1(context),page2(context),page3(context)  ];
    size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [HeaderWave(), body(context)],
    ));
  }

  Widget body(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [cardStack(context), containerInformacion(context)],
      ),
    );
  }

 
  Widget cardStack(BuildContext context) {
    return Container(
      height: 350,
      // color: Colors.black,
      width: size.width,
      child: PageView(
        onPageChanged: (value) {
          setState(() {});
          page = value;
        },
        children: [
          GestureDetector(
            onTap: (){
             alerta(context,titulo: "Calificar repartidor",contenido: Content() );
            },
          child: card(
              url: 'assets/Prspective.jpg',
            ),
          ),
          card(
            url: 'assets/lateral.jpg',
          ),
          card(
            url: 'assets/posterior.jpg',
          ),
        ],
      ),
    );
  }

  Widget card({String url, String title}) {
    return Padding(
      padding: const EdgeInsets.only(top: 100, bottom: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: size.width * 0.89,
            height: size.width * 0.89,
            child: Stack(
              children: [
                Card(
                  color: Colors.white,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      '$url',
                      fit: BoxFit.cover,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  // elevation: 6,
                  // shadowColor: Colors.grey[50],
                ),
                // text('$title'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget containerInformacion(BuildContext context) {
    return Column(
      children: [
        Container(width: size.width * 0.86, child: Divider() ),
        Container(
          width: size.width * 0.86,
          height: size.width * 0.86 - 40,
          //child: page == 0 ?page1(context): page == 1  ?page2(context):page3(context) ,
          child: info(page)

          // color: Colors.red,
        ),
      ],
    );
  }

  Widget page1(BuildContext context){
    return Column(children: [
     
    ],);
  }

   Widget page2(BuildContext context){
  return Column(children: [
      Text("texto 2 ")
    ],);
  }

  Widget page3(BuildContext context){
  return Column(children: [
      Text("texto 3 ")
    ],);
  }

  Widget info(int infoP) {
   Widget datos = data[infoP];
    return datos;
  }
}







class Content extends StatefulWidget {

  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
int estrella=0;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // Text("texto 1 "),
      SizedBox(height:5),
      Column(children: [
        Container(
          height: 90,
          // color: Colors.grey,
          child: Row(
          
            children: [
            CircleAvatar(radius:40,backgroundColor: Colors.grey,),
            SizedBox(width:10),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("JUAN BARRAZa",style: TextStyle(fontWeight: FontWeight.bold ), ),
                Text("3135853600"),
                Text("Sin calficacion",style: TextStyle(color:Colors.green ), )
              ],),
            )
            
          ],),
        ),
        SizedBox(height:30),
        Text("Calificar a este repartidor"),
        SizedBox(height:10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            imagenMethod(context,1),
            imagenMethod(context,2),
            imagenMethod(context,3),
            imagenMethod(context,4),
            imagenMethod(context,5),
        ],),
        SizedBox(height:10),
        Column(children: [
          RaisedButton(onPressed: estrella ==0 ?null: (){},color:Colors.green,shape: StadiumBorder(),child: Text("Calificar",style:TextStyle(color: Colors.white)  ),  )
        ],),
        SizedBox(height:5),
        Column(children: [
          Container(
            height: 15,
            child: FlatButton(onPressed: (){ Navigator.pop(context); },child: Text("Saltar",style:TextStyle(color: Colors.green)  ),  ))
        ],)

      ],)
    ],);
  }
  Widget imagenMethod(BuildContext context ,int id ){
  return GestureDetector(
            onTap:(){
               estrella =id;
            setState(() {
            });
            },
            child: Container(width:30,height:30,child:Image(image:AssetImage("assets/estrella.png"),color: estrella >=id  ?Colors.yellow:Colors.grey ) ));
  }
}
