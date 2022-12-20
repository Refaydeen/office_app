import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;


String? date;
String? finalTime;
String? currentAddress;
Position? currentPosition;
bool _isLoading=false;


Future<void> getAddress() async {

//  getPermission();
  // checking permissions
  getCurrentDateTime();
  Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);

  currentPosition = position;
  print('current position:$currentPosition');

  await placemarkFromCoordinates(
          currentPosition!.latitude, currentPosition!.longitude)
      .then((List<Placemark> placemarks) {
    Placemark place = placemarks[0];
    currentAddress =
        '${place.street} ${place.subLocality},${place.subAdministrativeArea},${place.postalCode}';
    }).catchError((e) {
    debugPrint(e);
  });
   //calling date and time functions
  print('Current Address:$currentAddress,time:$finalTime,date:$date');

}

getCurrentDateTime() {
  date = DateFormat("yyyy-MM-dd").format(DateTime.now());
  var time = new DateTime.now().toString();
  var timeParse = DateTime.parse(time);
  var formattedTime =
      "${timeParse.hour}:${timeParse.minute}:${timeParse.second}";
  finalTime = formattedTime.toString();
}
// Future<void> updateLogoutLocation(String email) async {
//   Map data = {
//     "logoutTime":finalTime,
//     "logoutLocation":currentAddress,
//     //"loginDate":date
//   };
//   var jsonResponse;
//
//   String apiEndpoint = 'http://192.168.1.8:3000/employees/$email';
//
//   final Uri url = Uri.parse(apiEndpoint);
//   var response = await http.put(url,body: data);
//   if (response.statusCode == 200) {
//     jsonResponse = json.decode(response.body);
//     if (jsonResponse != null) {
//       //setState(() {
//         _isLoading = false;
//      // });
//     }
//   } else {
//    // setState(() {
//       _isLoading = false;
//  //   });
//   }
//   print('status code:$response.statusCode');
//   print('response:$response.body');
//
// }



