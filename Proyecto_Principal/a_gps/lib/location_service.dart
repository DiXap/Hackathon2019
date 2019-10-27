import 'dart:async';
import 'package:location/location.dart';
import 'package:a_gps/models/user_location.dart';


class LocationService {
  UserLocation _currentLocation;
  var location = Location();

  Future<UserLocation> getLocation() async{
    try {
      var userLocation = await location.getLocation();
      _currentLocation = UserLocation(
        latitude: userLocation.latitude,
        longitude: userLocation.longitude,
      );
    } on Exception catch (e) {
      print('Imposible obtener localización: ${e.toString()}');
    }
    return _currentLocation;

  }

  StreamController<UserLocation>_locationController = StreamController<UserLocation>();

  Stream<UserLocation> get locationStream => _locationController.stream;

  LocationService(){
    location.requestPermission().then((granted){
      if (granted) {
        location.onLocationChanged().listen((locationData){
          if(LocationData!=null){
            _locationController.add(UserLocation(
              latitude: locationData.latitude,
              longitude: locationData.longitude,
            ));
          }
        });
      
      } 
    });
  }


}

