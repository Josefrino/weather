import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  LocationCard(
      {this.temp, this.weather, this.city, this.image, this.backgroundColor});

  final temp;
  final weather;
  final city;
  final image;
  final backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 300.0,
        width: 150.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: backgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '$tempºC',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0),
                  ),
                  Text(
                    '$weather',
                    style: TextStyle(color: Color(0xFF9ACDE6), fontSize: 25.0),
                  ),
                  Text(
                    '$city',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Robot',
                        fontSize: 30.0),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(
                  right: 8.0, left: 8.0, top: 10.0, bottom: 10.0),
              child: Image.asset('$image'),
            )),
          ],
        ),
      ),
    );
  }
}
