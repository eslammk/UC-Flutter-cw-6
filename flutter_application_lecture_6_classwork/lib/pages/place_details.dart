import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/places.dart';

class PlaceDetails extends StatelessWidget {
  final Place place;

  const PlaceDetails({super.key, required this.place});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kuwait"),
        backgroundColor: Color.fromARGB(153, 28, 120, 63),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              place.image,
              width: 400,
              height: 400,
              fit: BoxFit.contain,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text("describtion : ${place.describtion}"),
            ),
            Text(place.name),
          ],
        ),
      ),
    );
  }
}
