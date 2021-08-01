import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather/constants.dart';
import 'package:weather/custom_widgets/forecast_card.dart';

import '../custom_widgets/summery_card.dart';

var date = new DateTime.now();

class ForecastScreen extends StatelessWidget {
  const ForecastScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: kHomeBackgroundStyle,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Text(
                'Forecast Report',
                style: kPageTitleTextStyle,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Today',
                    style: kMediumTextStyle,
                  ),
                  Text(
                    '${DateFormat('EEEE, d MMM, yyyy').format(date)}',
                    style: TextStyle(color: Color(0xFF8A8BB1)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: Container(
                height: 80.0,
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    SummeryCard(
                      image: 'assets/images/046-sunny.png',
                      time: '${date.hour + 1}:00',
                      temp: '32 ºC',
                      color: kInactiveColor,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    SummeryCard(
                      image: 'assets/images/044-cloud.png',
                      time: '${date.hour + 2}:00',
                      temp: '28 ºC',
                      color: kInactiveColor,
                    ),
                    SizedBox(width: 15.0),
                    SummeryCard(
                      image: 'assets/images/009-cloudy.png',
                      time: '${date.hour + 3}:00',
                      temp: '20 ºC',
                      color: kInactiveColor,
                    ),
                    SizedBox(width: 15.0),
                    SummeryCard(
                      image: 'assets/images/049-rain.png',
                      time: '${date.hour + 4}:00',
                      temp: '18 ºC',
                      color: kInactiveColor,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Next forecast',
                    style: kMediumTextStyle,
                  ),
                  Icon(
                    Icons.calendar_today,
                    color: Color(0xFFACABCA),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                child: ListView(
                  children: [
                    ForecastCard(
                      day:
                          '${DateFormat('EEEE').format(date.add(Duration(days: 1)))}',
                      date:
                          '${DateFormat('MMM d').format(date.add(Duration(days: 1)))}',
                      temp: 32,
                      img: 'assets/images/033-sun.png',
                    ),
                    ForecastCard(
                      day:
                          '${DateFormat('EEEE').format(date.add(Duration(days: 2)))}',
                      date:
                          '${DateFormat('MMM d').format(date.add(Duration(days: 2)))}',
                      temp: 21,
                      img: 'assets/images/009-cloudy.png',
                    ),
                    ForecastCard(
                      day:
                          '${DateFormat('EEEE').format(date.add(Duration(days: 3)))}',
                      date:
                          '${DateFormat('MMM d').format(date.add(Duration(days: 3)))}',
                      temp: 15,
                      img: 'assets/images/017-wind.png',
                    ),
                    ForecastCard(
                      day:
                          '${DateFormat('EEEE').format(date.add(Duration(days: 4)))}',
                      date:
                          '${DateFormat('MMM d').format(date.add(Duration(days: 4)))}',
                      temp: 14,
                      img: 'assets/images/002-rain.png',
                    ),
                    ForecastCard(
                      day:
                          '${DateFormat('EEEE').format(date.add(Duration(days: 5)))}',
                      date:
                          '${DateFormat('MMM d').format(date.add(Duration(days: 5)))}',
                      temp: 5,
                      img: 'assets/images/006-snow.png',
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
