import 'package:flutter/material.dart';
//import 'package:new_geolocation/geolocation.dart';
import 'dart:async';
import 'package:a_gps/location_service.dart';
import 'package:a_gps/models/user_location.dart';


class Contacts extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar(title: Text("Contactos"),),
      body: Center(
        child: Text("DB Contactos"),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.pushNamed(context, '/Contactos/Interfaz');
          },
          tooltip: 'Add Contact',
          child: Icon(Icons.add),
        ),
    );
  }
}

class Add extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Añadir Contactos"),
        actions: <Widget>[
          FlatButton(
            textColor: Colors.white,
            onPressed: (){
              Navigator.pushNamed(context, '/Contactos/Interfaz');
            },
            child: Text("Cancelar"),
            shape: CircleBorder(side: BorderSide(color: Colors.transparent)
            ),
          ),
          
        ],
        
      ),
      resizeToAvoidBottomPadding: false,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, '/Contactos');
        },
        tooltip: 'Confirm',
        child: Icon(Icons.check),
      ),
      
    );
    
  }
  
}
