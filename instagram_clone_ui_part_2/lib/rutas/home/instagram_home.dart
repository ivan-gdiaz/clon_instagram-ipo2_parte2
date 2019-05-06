import "package:flutter/material.dart";
import 'package:instagram_clone_ui/rutas/home/instagram_home_body.dart';

class ESInstagramRutaHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          // Fondo "casi" blanco
          backgroundColor: new Color(0xFFF8FAF8),
          elevation: 1.0,
          leading: new Icon(Icons.camera_alt),
          // Otra menra de insertar la imagen en una caja con dimensiones
          title: new SizedBox(
              height: 35.0,
              child: Image.asset("assets/imagenes/instagram_logo.png"),        
          ),
          actions: <Widget>[
            new Padding(
              padding: const EdgeInsets.only(right:15.0),
              child: Icon(Icons.send)
            )
          ],
      ),
      body: new InstagramHomeBody(),
      bottomNavigationBar: new Container(
        height: 50.0,
        child: new BottomAppBar(
          child: new Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new IconButton(
                icon: new Icon(
                  Icons.home,
                ),
                onPressed: () {},
              ),
              new IconButton(
                icon: new Icon(
                  Icons.search
                ),
              ),
              new IconButton(
                icon: new Icon(
                  Icons.add_box
                ),
                onPressed: null,
              ),
              new IconButton(
                icon: new Icon(
                  Icons.favorite
                ),
                onPressed: null,
              ),
              new IconButton(
                icon: new Icon(
                  Icons.account_box
                ),
                onPressed: null,
              )
            ],
          )
        )
      ),
    );
  }
}
