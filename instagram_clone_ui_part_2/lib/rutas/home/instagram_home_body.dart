import "package:flutter/material.dart";
import 'package:instagram_clone_ui/rutas/home/instagram_list.dart';

class InstagramHomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        // Ocupe todo el espacio vertical disponible en la columna
        // Flexible tiene que ser descendiente de Row o Column 
        Flexible(
          child: new InstagramList()
        )
      ],
    );
  }
}