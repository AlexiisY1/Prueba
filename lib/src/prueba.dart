import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de imagenes',
      theme: ThemeData(primaryColor: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  int contador = 0;
  TextStyle estilosTexto = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Menu Principal',
          onPressed: () => {},
        ),
        title: Text('Imágenes'),
        centerTitle: true,
        elevation: 5.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_alert),
            tooltip: 'Alertas',
            onPressed: () => {},
          ),
          IconButton(
            icon: Icon(Icons.mail),
            tooltip: 'Correo',
            onPressed: () => {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 150,
              child: Image.asset('asset/images/imagen.jpg'),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 150,
              child: Image.asset('asset/images/imagen.jpg'),
            ),
            SizedBox(
              height: 50,
            ),
            Text('Haz presionado este numero de veces', style: estilosTexto),
            SizedBox(
              height: 20,
            ),
            Text('$contador', style: estilosTexto),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          contador++;
          print(contador);
        },
        child: Icon(Icons.plus_one_rounded),
      ),
    );
  }
}
