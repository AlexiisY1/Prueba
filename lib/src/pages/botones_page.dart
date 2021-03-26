import 'package:flutter/material.dart';

class BotonesPage extends StatefulWidget {
  @override
  _BotonesPageState createState() => _BotonesPageState();
}

class _BotonesPageState extends State<BotonesPage> {
  String _mensaje = 'null';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tipo de botones'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50.0,
              ),
              Container(
                width: 200.0,
                height: 80.0,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.green, style: BorderStyle.solid),
                ),
                child: RaisedButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  onPressed: () => {
                    setState(() {
                      _mensaje = 'RaisedButton';
                      //print('$_mensaje');
                    })
                  },
                  child: Text('RaisedButton'),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                width: 200.0,
                height: 80.0,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.green, style: BorderStyle.solid),
                ),
                child: FlatButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  onPressed: () => {
                    setState(() {
                      _mensaje = 'FlatButton';
                    })
                  },
                  child: Text('FlatButton'),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                width: 200.0,
                height: 80.0,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.green, style: BorderStyle.solid),
                ),
                child: IconButton(
                    color: Colors.green,
                    icon: Icon(Icons.delete),
                    onPressed: () => {
                          setState(() {
                            _mensaje = 'IconButton';
                          })
                        },
                    iconSize: 45.0),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                width: 200.0,
                height: 80.0,
                /*decoration: BoxDecoration(
                border:
                    Border.all(color: Colors.blue, style: BorderStyle.solid),
              ),*/
                child: OutlineButton(
                  textColor: Colors.green,
                  color: Colors.green,
                  child: Text('OutlineButton'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  borderSide: BorderSide(color: Colors.green),
                  onPressed: () => {
                    setState(() {
                      _mensaje = 'OutlineButton';
                    })
                  },
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Text('Presionaste el $_mensaje')
            ],
          ),
        ),
        floatingActionButton: _mostrarBotones());
  }

  Widget _mostrarBotones() {
    return Row();
  }
}
