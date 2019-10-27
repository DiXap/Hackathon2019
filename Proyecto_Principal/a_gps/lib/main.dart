import 'package:flutter/material.dart';
//import 'package:new_geolocation/geolocation.dart';
import 'dart:async';
import 'package:a_gps/location_service.dart';
import 'package:a_gps/models/user_location.dart';
//import 'package:location/location.dart';
import 'package:provider/provider.dart';
import 'package:a_gps/contact_page.dart';
import 'package:a_gps/location_page.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
    return MaterialApp(
     // home: BaseApp(),
      routes: <String, WidgetBuilder>{
        '/': (context) => BaseApp(),
        '/Localizacion': (context) => Location(),
        '/Contactos': (context) => Contacts(),
        '/Contactos/Interfaz': (context) => Add()
      },
    );
  }
  
}



class BaseApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(title: Text("SOS"), centerTitle: true,),
        body: Center(
         //alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                elevation: 0,
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0),
                  side:  BorderSide(color: Colors.redAccent)
                ),
                color: Colors.red,
                child: Text("!", style: TextStyle(fontSize: 50.0),),
                textColor: Colors.black,
                onPressed: (){
                  Navigator.pushNamed(context, '/Localizacion');
                },
              ),
              
              
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.pushNamed(context, '/Contactos');
          },
          tooltip: 'Add Contact',
          child: Icon(Icons.contacts), splashColor: Colors.green,
        ),
      ),
    );
  }
}

