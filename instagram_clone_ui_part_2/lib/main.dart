import "package:flutter/material.dart";
// Sustituir "instagram_clone_ui" por el nombre que le habéis dado a
// vuestro proyecto
import "package:instagram_clone_ui/rutas/home/instagram_home.dart";



void main(){
  return runApp(new miAplicacion());
}

class miAplicacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "ESInstagram",
      debugShowCheckedModeBanner: false,
      // Customizando aspectos visuales de la app
      theme: new ThemeData(
        // En la UI de Instagram original predomina el negro
        primaryColor: Colors.black,
        // El color principal/primario para los iconos
        primaryIconTheme: IconThemeData(color: Colors.black),
        textTheme: new TextTheme(
          body1: TextStyle(
            color: Colors.black,
            fontFamily: "Aveny",
            fontWeight: FontWeight.bold,
            fontSize: 18.0
          ),
          body2: TextStyle(
            color: Colors.black,
            fontFamily: "Aveny",
            fontWeight: FontWeight.normal,
            fontSize: 18.0
          )
        )
      ),
      home: new ESInstagramRutaHome(),
    );
  }
}