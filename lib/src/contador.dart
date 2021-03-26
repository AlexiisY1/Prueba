import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  Contador({Key key}) : super(key: key);

  @override
  _ContadorState createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int _contador = 0;
  String _mensaje = null;
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
              onPressed: () => {
                setState(() {
                  _mensaje = 'Correo nuevo';
                })
              },
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
                child: Image.asset('Mensaje'),
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
              Text('$_contador', style: estilosTexto),
            ],
          ),
        ),
        floatingActionButton: _mostrarBotones());
  }

  Widget _mostrarBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: _restaurarContador,
          child: Icon(Icons.exposure_zero),
        ),
        SizedBox(
          width: 7,
        ),
        FloatingActionButton(
          onPressed: _incremetarContador,
          child: Icon(Icons.plus_one),
        ),
        SizedBox(
          width: 7,
        ),
        FloatingActionButton(
          onPressed: _decremetarContador,
          child: Icon(Icons.remove),
        ),
      ],
    );
  }

  void _restaurarContador() {
    setState(() => _contador = 0);
  }

  void _incremetarContador() {
    setState(() => _contador++);
  }

  void _decremetarContador() {
    setState(() => _contador--);
  }
}
