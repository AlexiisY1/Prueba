import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
//import 'package:prueba/src/pages/billetera_page.dart';
////import 'package:prueba/src/pages/fotos_page.dart';
//import 'package:prueba/src/contador.dart';
//import 'package:prueba/src/pages/home_page.dart';
//import 'package:prueba/src/pages/lugares_page.dart';
//import 'package:prueba/src/pages/mapa_page.dart';
//import 'package:prueba/src/pages/podcast_page.dart';
import 'package:prueba/src/routes/routes.dart';
//import 'dart:ui';

class MyApp extends StatelessWidget {
  /*final nombres = [
    'Juan'
        'Pedro'
        'Maria'
        'Armando'
        'Mario'
        'Jose'
        'Angel'
  ];*/
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App de Imagenes',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      initialRoute: '/',
      routes: obtenerRutas(),
      //home: HomePage(),
      //home: Scaffold(
      //appBar: AppBar(
      //title: Text('Alexis Yarid Sánchez'),
      //),
      //body: ListView(children: _crearItems()),
      //),
    );
  }
}
/*
  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();

    for (var opt in nombres) {
      final tempWidget = ListTile(
          title: Text(opt),
          subtitle: Text('Esto es un subtitulo'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {});
      lista.add(tempWidget);
      lista.add(Divider());
    }
    return lista;
  }
}*/

/*class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text('Buscar por restaurante'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search_outlined),
              tooltip: 'Buscar',
              onPressed: () {
                print('Busqueda iniciada');
              }),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.red)),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 300.0,
                      child: Text(
                        ' Restaurantes',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black45,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 250.0,
                      child: Text(
                        'Envio MXN 80.00',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black45,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 330.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          border: Border.all()),
                      height: 200.0,
                      child: Center(
                        child: Image.network(
                            'https://weneedfun.com/wp-content/uploads/2015/10/Beautiful-Food-Photos-2.jpg'),
                      ),
                    ),
                    Container(
                      width: 300.0,
                      child: Text(
                        'Burger King',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 250.0,
                      child: Text(
                        'Envio MXN 80.00',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black45,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 330.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          border: Border.all()),
                      height: 200.0,
                      child: Center(
                        child: Image.network(
                            'https://weneedfun.com/wp-content/uploads/2015/10/Beautiful-Food-Photos-6.jpg'),
                      ),
                    ),
                    Container(
                      width: 300.0,
                      child: Text(
                        'Dominos Pizza',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 250.0,
                      child: Text(
                        'Envio MXN 80.00',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black45,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.restaurant,
                              size: 50.0, color: Colors.black26),

                          /*Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.blue)),
                    width: 80,
                    height: 80,
                    child: Icon(Icons.account_circle, size: 60.0, color: Colors.green),
                  ),*/
                          Expanded(
                            child: Icon(
                              Icons.search,
                              size: 50.0,
                              color: Colors.black26,
                            ),
                            /*child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.blue)),
                    width: 80,
                    height: 80,
                    child: Icon(Icons.airplay, size: 60.0, color: Colors.green),
                  )*/
                          ),
                          Expanded(
                            child: Icon(Icons.home,
                                size: 50.0, color: Colors.black26),
                            /*child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.blue)),
                    width: 80,
                    height: 80,
                    child: Icon(Icons.airplay, size: 60.0, color: Colors.green),
                  )*/
                          ),
                          Icon(Icons.people, size: 50.0, color: Colors.black26),
                          /*Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.blue)),
                    width: 80,
                    height: 80,
                    child:
                        Icon(Icons.computer, size: 60.0, color: Colors.green),
                  ),*/
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      //backgroundColor: Colors.greenAccent,

      //floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      /*floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('Bóton presionado');
        },
      ),*/
    );
  }
}
*/
