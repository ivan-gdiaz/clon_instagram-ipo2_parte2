import "package:flutter/material.dart";
// Sustituir "instagram_clone_ui" por el nombre que le habéis dado a
// vuestro proyecto
import "package:instagram_clone_ui/rutas/home/instagram_stories.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstagramList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) =>
          // Historias en horizontal o el feed normal
          index == 0
              ? new InstagramStories()
              : new Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    // Nueva fila
                    // Cabecera de cada feed con el leading icon, nombre y el
                    // icono de "mort_vert"
                    new Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, top: 16.0, right: 8.0, bottom: 8.0),
                        child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              // leading icon + nombbre (lennon)
                              new Row(
                                children: <Widget>[
                                  new Container(
                                      height: 40.0,
                                      width: 40.0,
                                      decoration: new BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: new DecorationImage(
                                            fit: BoxFit.fill,
                                            image: new AssetImage(
                                                "assets/imagenes/lennon.jpg"),
                                          ))),
                                  new Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0)),
                                  new Text(
                                    "lennon",
                                    style: Theme.of(context).textTheme.body1,
                                  ),
                                ],
                              ),
                              new IconButton(
                                icon: new Icon(Icons.more_vert),
                                onPressed: null,
                              )
                            ])),
                    // Nueva fila
                    // Aquí tanto un widget Flexible como un Container valen para contener
                    // la imagen grande.
                    new Container(
                      child: new Image.asset("assets/imagenes/lennon.jpg",
                          fit: BoxFit.cover),
                    ),
                    // Nueva fila
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          // Fila para los tres iconos de la izquierda
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Icon(
                                  // Uso de FontAwesome
                                  FontAwesomeIcons.heart),
                              new SizedBox(
                                width: 16.0,
                              ),
                              new Icon(
                                FontAwesomeIcons.comment,
                              ),
                              new SizedBox(
                                width: 16.0,
                              ),
                              new Icon(FontAwesomeIcons.paperPlane),
                            ],
                          ),
                          new Icon(FontAwesomeIcons.bookmark)
                        ],
                      ),
                    ),
                    // Nueva fila
                    new Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 6.0),
                        child: new Row(
                          children: <Widget>[
                            new Text("Le gusta a ",
                                style: Theme.of(context).textTheme.body2),
                            new Text("paul_mccartney, d_gilmour, n_mason",
                                style: Theme.of(context).textTheme.body1),
                            new Text("y ",
                                style: Theme.of(context).textTheme.body2),
                            new Text("3 más",
                                style: Theme.of(context).textTheme.body1),
                          ],
                        ))
                    ,
                    // Nueva fila
                    new Padding(
                        padding:
                            const EdgeInsets.fromLTRB(16.0, 6.0, 0.0, 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            new Container(
                                height: 40.0,
                                width: 40.0,
                                decoration: new BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                      fit: BoxFit.fill,
                                      image: new AssetImage(
                                          "assets/imagenes/lennon.jpg"),
                                    ))),
                            new Padding(
                              padding: const EdgeInsets.only(
                                left:10.0
                              ) 
                            ),
                            // Usar un widget Flexible o Expanded siempre para
                            // envolver un Texfield, salvo que sea descendiente
                            // de un Column o Row. 
                            new Expanded(
                                child: new TextField(
                                  decoration: new InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Añade un comentario...",
                                  ),
                                )
                            )
                          ],
                        )
                    ),
                    // Nueva fila
                    new Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0
                      ),
                      child: new Text(
                        "Hace 2 día",
                        style:  TextStyle(
                          color: Colors.grey,
                          fontFamily: "Aveny",
                          fontWeight: FontWeight.normal,
                          fontSize: 18.0
                        )
                      ),
                    )
                  ],
                ),
    );
  }
}
