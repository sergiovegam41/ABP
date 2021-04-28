
import 'package:abps_unisinu/src/utlils/headers.dart';
import 'package:abps_unisinu/src/utlils/utlis.dart';
import 'package:flutter/material.dart';

class ComputoBodyPage extends StatefulWidget {
  @override
  _ComputoBodyPageState createState() => _ComputoBodyPageState();
}

class _ComputoBodyPageState extends State<ComputoBodyPage> {
  Size size;
  int page = 0;
  int estrella=0;
  List<Widget> data=[];
  PageController controlador = new PageController();


  @override
  Widget build(BuildContext context) {
    
    data = [page1(context),page2(context),page3(context),page4(context) ,page5(context) ,page6(context) ,page7(context),page8(context) ,page9(context) ,page10(context) ,
    page11(context) ,page12(context) ,page13(context) ,page14(context) ,page15(context) 
       ];
    size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [HeaderWave(), body(context)],
    ));
  }

  Widget body(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          cardStack(context),
          containerInformacion(context),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                IconButton(icon: Icon(Icons.arrow_back_ios_sharp ), onPressed: (){
                  // Navigator.pop(context);
              
             page == 0 ? Navigator.pop(context):   controlador.previousPage(duration: Duration(seconds:1),curve: Curves.easeOutCirc  ) ;
                  setState(() {
                    
                  });
                  })
                ,IconButton(icon: Icon(Icons.arrow_forward_ios_sharp ), onPressed: (){
                  controlador.nextPage(duration: Duration(seconds:1),curve: Curves.easeOutCirc ) ;
                  setState(() {
                    
                  });
                  })
            ]),
          )
           ],
      ),
    );
  }


  Widget cardStack(BuildContext context) {
    return Container(
      height: 350,
      // color: Colors.black,
      width: size.width,
      child: PageView(
        controller:controlador ,
        onPageChanged: (value) {
          setState(() {});
          page = value;
        },
        children: [
          card(
            url: 'assets/1.png',
          ),
          card(
            url: 'assets/2.png',
          ),
          card(
            url: 'assets/3.png',
          ),
          card(
            url: 'assets/4.png',
          ),
          card(
            url: 'assets/5.png',
          ),
          card(
            url: 'assets/6.png',
          ),
          card(
            url: 'assets/7.png',
          ),
          card(
            url: 'assets/8.png',
          ),
          card(
            url: 'assets/9.png',
          ),
          card(
            url: 'assets/10.png',
          ),
          card(
            url: 'assets/11.png',
          ),
          card(
            url: 'assets/12.png',
          ),
          card(
            url: 'assets/13.png',
          ),
          card(
            url: 'assets/14.png',
          ),
          card(
            url: 'assets/15.png',
          ),
        ]
      ),
    );
  }

  Widget card({String url, String title}) {
    return Padding(
      padding: const EdgeInsets.only(top: 100, ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: size.width * 0.89,
            height: size.height* 0.32,
            // color: Colors.grey,
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                  ],
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
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(height:20),
        Container(width: size.width * 0.86, child: Divider() ),
        Container(
          // color: Colors.grey,
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
     Text("Paso #1",style:TextStyle(fontSize:25,fontWeight:FontWeight.bold ) ),
     SizedBox(height:15 ),
     Text("Damos click derecho en inicio y damos click en administrador de dispositivos",style:TextStyle(fontSize:15 ),textAlign: TextAlign.center,  )
    ],);
  }

   Widget page2(BuildContext context){
  return Column(children: [
    Text("Paso #2",style:TextStyle(fontSize:25,fontWeight:FontWeight.bold ) ),
    SizedBox(height:15 ),
     Text("En esta pagina acontinuacion procedemos a identificar los drivers que necesitamos actualizar, sabemos identificarlos porque muestran un icono amarillo",style:TextStyle(fontSize:15 ),textAlign: TextAlign.center,),
     SizedBox(height:15 ),
     Text("Como primera opcion debemos actualizar con la ayuda del pc, damos click derecho en el driver identificado y dar click en actualizar controlador",style:TextStyle(fontSize:15 ),textAlign: TextAlign.center,  )
    ],);
  }

  Widget page3(BuildContext context){
  return Column(children: [
      Text("Paso #3",style:TextStyle(fontSize:25,fontWeight:FontWeight.bold ) ),
     SizedBox(height:15 ),
     Text("Aqui damos click en la primera opcion y dejar que windows intente solucionar el problema.",style:TextStyle(fontSize:15 ),textAlign: TextAlign.center,  ),
      SizedBox(height:15 ),
      Text("Esta es la primera opcion, si esto no llega a ser una solucion, a continuacion procedemos con el paso #4.",style:TextStyle(fontSize:15 ),textAlign: TextAlign.center,  )
    ],);
  }
  Widget page4(BuildContext context){
  return Column(children: [
      Text("Paso #4",style:TextStyle(fontSize:25,fontWeight:FontWeight.bold ) ),
      SizedBox(height:15 ),
     Text("En este paso empezaremos a buscar manualmente nuestro driver necesario.",style:TextStyle(fontSize:15 ),textAlign: TextAlign.center,  )
     , SizedBox(height:15 ),
     Text("Para esto ya teniendolo identificado damos click derecho y damos click en propiedades.",style:TextStyle(fontSize:15 ),textAlign: TextAlign.center,  )
    ],);
  }
  Widget page5(BuildContext context){
  return Column(children: [
      Text("Paso #5",style:TextStyle(fontSize:25,fontWeight:FontWeight.bold ) ),
      SizedBox(height:15 ),
     Text("Damos click en identificadores de harware",style:TextStyle(fontSize:15 ),textAlign: TextAlign.center,  )
    ],);
  }
  Widget page6(BuildContext context){
  return Column(children: [
      Text("Paso #6",style:TextStyle(fontSize:25,fontWeight:FontWeight.bold ) ),
      SizedBox(height:15 ),
     Text("Aqui nos salen las referencias con las cuales podemos buscar nuestro driver en la web, cabe destacar que para esto tambien debe tener en cuenta en muchas paginas su sistema operativo y marca dispositivo",style:TextStyle(fontSize:15 ),textAlign: TextAlign.center,  )
      ,SizedBox(height:15 ),
     Text("Damos click en copiar",style:TextStyle(fontSize:15 ),textAlign: TextAlign.center,  )
    ],);
  }
  Widget page7(BuildContext context){
  return Column(children: [
      Text("Paso #7",style:TextStyle(fontSize:25,fontWeight:FontWeight.bold ) ),
       SizedBox(height:15 ),
     Text("Nos vamos a nuestro navegador favorito y buscamos el id que habiamos copiado",style:TextStyle(fontSize:15 ),textAlign: TextAlign.center,  )
    ],);
  }
  Widget page8(BuildContext context){
  return Column(children: [
      Text("Paso #8",style:TextStyle(fontSize:25,fontWeight:FontWeight.bold ) ),
       SizedBox(height:15 ),
     Text("Existen muchas paginas para esto, y Existen programas que hacen todo este proceso para usted automaticamente.",style:TextStyle(fontSize:15 ),textAlign: TextAlign.center,  )
      , SizedBox(height:15 ),
     Text("En este caso tenemos esta pagina web la cual nos da los archivos necesarios para que nuestro dispositivo instale, Descargamos el zip",style:TextStyle(fontSize:15 ),textAlign: TextAlign.center,  )
    ],);
  }
  Widget page9(BuildContext context){
  return Column(children: [
      Text("Paso #9",style:TextStyle(fontSize:25,fontWeight:FontWeight.bold ) ),
       SizedBox(height:15 ),
     Text("Extraemos el archivo",style:TextStyle(fontSize:15 ),textAlign: TextAlign.center,  )
    ],);
  }
  Widget page10(BuildContext context){
  return Column(children: [
      Text("Paso #10",style:TextStyle(fontSize:25,fontWeight:FontWeight.bold ) ),
       SizedBox(height:15 ),
     Text("Nos dejara una carpeta con unos cuantos archivos",style:TextStyle(fontSize:15 ),textAlign: TextAlign.center,  )
    ],);
  }
  Widget page11(BuildContext context){
  return Column(children: [
      Text("Paso #11",style:TextStyle(fontSize:25,fontWeight:FontWeight.bold ) ),
       SizedBox(height:15 ),
     Text("Damos nuevamente click derecho sobre inicio y vamos a administrador de dispositivos",style:TextStyle(fontSize:15 ),textAlign: TextAlign.center,  )
    ,  SizedBox(height:15 ),Text("Aqui buscamos el driver victima y damos click derecho actualizar controlador",style:TextStyle(fontSize:15 ),textAlign: TextAlign.center,  )
    ],);
  }
  Widget page12(BuildContext context){
  return Column(children: [
      Text("Paso #12",style:TextStyle(fontSize:25,fontWeight:FontWeight.bold ) ),
       SizedBox(height:15 ),
     Text("Damos click en la segunda opcion",style:TextStyle(fontSize:15 ),textAlign: TextAlign.center,  ),
    ],);
  }
  Widget page13(BuildContext context){
  return Column(children: [
      Text("Paso #13",style:TextStyle(fontSize:25,fontWeight:FontWeight.bold ) ),
       SizedBox(height:15 ),
     Text("Nos abrira un explorador en el cual debemos buscar la carpeta que habiamos extraido anteriormente y dar click en aceptar, y luego en siguiente ",style:TextStyle(fontSize:15 ),textAlign: TextAlign.center,  )
       ,SizedBox(height:15 ),
     Text("Automaticamente empezara el proceso para actualizar. si no funciona esto seguimos con el paso #14",style:TextStyle(fontSize:15 ),textAlign: TextAlign.center,  )
    ],);
  }
  Widget page14(BuildContext context){
  return Column(children: [
      Text("Paso #14",style:TextStyle(fontSize:25,fontWeight:FontWeight.bold ) ),
       SizedBox(height:15 ),
     Text("Este paso consta de buscar el id del controlador y buscarlo en google pero descargar esta ocasion archivos .exe (ejecutables) los cuales se encargan de instalar ese driver especifico en nuestro ordenador",style:TextStyle(fontSize:15 ),textAlign: TextAlign.center,  )
    ],);
  }
  Widget page15(BuildContext context){
  return Column(children: [
      Text("Opcion Final",style:TextStyle(fontSize:25,fontWeight:FontWeight.bold ) ),
       SizedBox(height:15 ),
      Text("Si ninguno de estos pasos surtio efecto, llegamos al punto de depender de un programa especial que escanee nuestro dispositivo y nos busque autmoaticamente y actualice todos los controladores necesarios, en este caso presentamos driver booster pero hay varios programas encargados de esto.",style:TextStyle(fontSize:15 ),textAlign: TextAlign.center,  )
    ,SizedBox(height:30 ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center
   ,   children: [ FlatButton(onPressed: (){
Navigator.pop(context);

   }, child:Text("Volver a presentacion",style: TextStyle(color: Colors.green )  ) ) ],)
    
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
