import 'package:flutter/material.dart';
import 'package:practica8_200570/media_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:new AppBar(
        title: new Text("MovieApp - 20570"),
        actions:<Widget>[
        new IconButton(
          icon: new Icon(Icons.search, color:Colors.white,), 
          onPressed: (){}, 
          )
          ]
      ),
      drawer: new Drawer(
        child: new ListView(
          children: [
        new DrawerHeader(child: new Material()),
        new ListTile(
          title: new Text("Peliculas"),
          trailing: new Icon(Icons.local_movies),
        ),
        new Divider(
          height: 5.0,
        ),

        new ListTile(
          title: new Text("Televisión"),
          trailing: new Icon(Icons.live_tv),
      ),
        new Divider(
          height: 5.0,
        ),
        
        new ListTile(
          title: new Text("Cerrar"),
          trailing: new Icon(Icons.close),
          onTap:()=> Navigator.of(context).pop(),
      ),
      ],
        ),
      ),
      body: new PageView(
        children: <Widget>[
          new MediaList()
        ],
      ),

      bottomNavigationBar: new BottomNavigationBar(
        items: _obtenerIconos(), 
        ),
    );
  }
    List<BottomNavigationBarItem> _obtenerIconos(){
      return[
        new BottomNavigationBarItem(
          icon: new Icon(Icons.thumb_up), label: "Populares",
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.update),label: "Proximamente",
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.star), label: "Mejor valorados",
        ), 
      ];
    }
  }
