import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    color: Colors.white,
    home: Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            imagenPagina("https://concepto.de/wp-content/uploads/2015/03/paisaje-e1549600034372.jpg"),
            tituloPagina(Color.fromARGB(177, 227, 227, 227), "Este texto de tìtulo 1", "Subtítulo 1", "46"),
            accionesPagina(),
            descripcionPagina("El Titicaca (en aimara: Titiqaqa, de titi, 'gato salvaje' y qaqa, 'cabello cano'; en referencia al gato andino gris) es el lago navegable más alto del mundo, ubicado en los Andes centrales, dentro de la meseta del Collao, a una altitud media de 3812 m s. n. m. entre los territorios de Bolivia y Perú. Posee un área de 8300 km² de los cuales el 56 % (4996 km²) corresponden a Perú y el 44 % (3304 km²) a Bolivia,2​ su profundidad máxima se estima en 281 m y se calcula su profundidad media en 107 m. Su nivel es irregular y aumenta durante el verano austral."),
        ])
      ,)
    )
  ,)
  );
}

//Crear la imagen
Widget imagenPagina (String urlImagen){
  return Image.network(urlImagen);
}

//Crear la segunda fila.
Widget tituloPagina (Color colorFondo, String textoTitulo, String textoSubtitulo, String preferidas){
  return 
  Container(
    // Esta es la segunda fila de elementos
    color: colorFondo,
    padding: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              textoTitulo,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
            ),
            Divider(
              color: Colors.black,
              height: 4,
            ),
            Text(
              textoSubtitulo,
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              color: Colors.redAccent,
            ),
            VerticalDivider(
              color: Colors.black,
              width: 8,
            ),
            Text(
              preferidas
              ),
          ],
        )
      ],
    ),
  );
}

// CTA
Widget accion(IconData icono, String textoCTA){
  return
  Container(
    padding: EdgeInsets.all(20),
    child: Column(
      children: [
        Icon(
          icono,
          color: Colors.blue,
          ),
        Divider(
          color: Color.fromARGB(0, 255, 255, 255),
          height: 8,
          thickness: 0,
        ),
        Text(
          textoCTA,
          style: TextStyle(color: Colors.blue),
        )
    ],),
  );
}

// 3ra fila de 3 CTAs
Widget accionesPagina(){
  return
  Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
              accion(Icons.call, "CALL")
            ]
          ),
        Column(
          children:[
            accion(Icons.near_me, "ROUTE")
          ]
        ),
        Column(
          children:[
            accion(Icons.share, "SHARE")
          ]
        )
    ],),
  );
}

Widget descripcionPagina(String textoDescripcion){
  return
    Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            textoDescripcion
          ,)
      ])
    ,);
}


// Widget todoPagina (){

// }