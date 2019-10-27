import 'package:flutter/material.dart';
//import 'package:new_geolocation/geolocation.dart';
import 'dart:async';
import 'package:a_gps/location_service.dart';
import 'package:a_gps/models/user_location.dart';
import 'package:location/location.dart';
import 'package:provider/provider.dart';


class Location extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return StreamProvider<UserLocation>(
    builder: (context) => LocationService().locationStream,
      child: MaterialApp(
        title: 'GPS',
        theme: ThemeData.dark(
          /*primarySwatch: Colors.green,*/
        ),
        home: Scaffold(
          appBar: new AppBar(
            leading: IconButton(icon: Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.pushNamed(context, '/');
              },
            ),
            backgroundColor: Colors.green,
            title: new Text("GPS"),
          ),
          body: HomeView(),
          floatingActionButton: FloatingActionButton(
            onPressed: (){},
            tooltip: 'Center Position',
            child: Icon(Icons.gps_fixed),
          ),
        ),
      ),
    
    );
  }
}


class HomeView extends StatelessWidget {
  const HomeView({Key key}): super(key: key);

  @override
  Widget build(BuildContext context){
    var userLocation = Provider.of<UserLocation>(context);
    return Align(
      alignment: Alignment.bottomLeft,
      child: Text(
        'Posición: ${userLocation?.latitude} Lat, ${userLocation?.longitude} Long'
      ),
    );
  }
  
}
