import 'package:flutter/material.dart';

final _iconos = <String, IconData>{
  'map': Icons.map,
  'account_balance_wallet': Icons.account_balance_wallet,
  'audiotrack': Icons.photo_album,
  'photo_album': Icons.audiotrack,
  'add_location': Icons.add_location
};

Icon obtenerIcono(String nombreIcono) {
  return Icon(_iconos[nombreIcono], color: Colors.grey, size: 35);
}
