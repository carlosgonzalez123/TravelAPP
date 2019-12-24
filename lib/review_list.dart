import 'package:curso_trips_flutter_app/review.dart';
import 'package:flutter/material.dart';
class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Review("assets/img/viajero.jpg", "Andres Gomez", "1 review 5 photos", "Amazing Place"),
        new Review("assets/img/viajero2.jpg", "Juliana Sandoval", "5 review 2 photos", "A perfect place to go on vacation"),
        new Review("assets/img/viajero3.jpg", "Camilo Ruiz", "2 review 8 photos", "The place is a bit expensive but worth it")
      ],

    );
  }
}