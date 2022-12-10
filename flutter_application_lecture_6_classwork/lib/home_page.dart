import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'models/places.dart';
import 'pages/place_details.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "KUWAIT",
          style: TextStyle(fontSize: 30),
        ),
        backgroundColor: Color.fromARGB(255, 32, 121, 56),
      ),
      body: ListView.builder(
          itemCount: Place.places.length,
          itemBuilder: ((context, index) {
            return Container(
              height: 200,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return PlaceDetails(place: Place.places[index]);
                  })));
                },
                child: Card(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          Place.places[index].image,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            Place.places[index].name,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        )
                      ]),
                ),
              ),
            );
          })),
    );
  }
}
