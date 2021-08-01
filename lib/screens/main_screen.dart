import 'package:flutter/material.dart';
import 'package:weather/custom_widgets/invisible_card.dart';

import '../constants.dart';
import '../custom_widgets/summery_card.dart';
import '../weather_model.dart';

int selectedButton = 0;

var now = new DateTime.now();

var _currentMonth = now.month - 1;

String city = "Unknown City";
int temperature = 0;
int windSpeed = 0;
int humidity = 0;

int futureTemp = 0;

WeatherModel weatherModel = WeatherModel();

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  void update() async {
    try {
      var data = await weatherModel.getLocationWeather();
      city = data['name'];

      double temp = data['main']['temp'];
      temperature = temp.toInt();

      humidity = data['main']['humidity'];

      double w = data['wind']['speed'];
      windSpeed = w.toInt();
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    update();
  }

  @override
  Widget build(BuildContext context) {
    update();
    return SafeArea(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: Text(
                '$city',
                style: kPageTitleTextStyle,
                maxLines: 1,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Center(
              child: Text(
                '${months[_currentMonth]} ${now.day}, ${now.year}',
                style: kMediumTextStyle,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      selectedButton = 1;
                    });
                  },
                  child: Text(
                    'Forecast',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0)),
                      backgroundColor: selectedButton == 1
                          ? MaterialStateProperty.all(kActiveColor)
                          : MaterialStateProperty.all(kInactiveColor)),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      selectedButton = 0;
                    });
                  },
                  child: Text(
                    'Air quality',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0)),
                    backgroundColor: selectedButton == 0
                        ? MaterialStateProperty.all(kActiveColor)
                        : MaterialStateProperty.all(kInactiveColor),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              width: 100.0,
              height: 210.0,
              child: Image.asset('assets/images/046-sunny.png'),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InvisibleCard(
                  title: 'Temp',
                  data: temperature,
                  type: 'ºC',
                ),
                InvisibleCard(
                  title: 'Wind',
                  data: windSpeed,
                  type: 'Km/h',
                ),
                InvisibleCard(
                  title: 'Humidity',
                  data: humidity,
                  type: '%',
                )
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Today',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  TextButton(onPressed: () {}, child: Text('View full report'))
                ],
              ),
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
                      time: '${now.hour + 1}:00',
                      temp: '32 ºC',
                      color: kInactiveColor,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    SummeryCard(
                      image: 'assets/images/044-cloud.png',
                      time: '${now.hour + 2}:00',
                      temp: '28 ºC',
                      color: kInactiveColor,
                    ),
                    SizedBox(width: 15.0),
                    SummeryCard(
                      image: 'assets/images/009-cloudy.png',
                      time: '${now.hour + 3}:00',
                      temp: '20 ºC',
                      color: kInactiveColor,
                    ),
                    SizedBox(width: 15.0),
                    SummeryCard(
                      image: 'assets/images/049-rain.png',
                      time: '${now.hour + 4}:00',
                      temp: '18 ºC',
                      color: kInactiveColor,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
