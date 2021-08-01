import 'package:weather/Location.dart';

import 'network_helper.dart';

class WeatherModel {
  String apiKey = 'ffb69c14f09f6408031db9a21212f54e';
  String url = '';
  double latitude = 0;
  double longitude = 0;

  Future<dynamic> getLocationWeather() async {
    url = 'https://api.openweathermap.org/data/2.5/weather';
    Location location = Location();
    await location.getLocation();

    NetworkHelper networkHelper = NetworkHelper(
        url:
            '$url?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric');
    var decodedData = await networkHelper.getData();
    return decodedData;
  }

  Future<dynamic> getFutureWeather() async {
    url = 'https://api.openweathermap.org/data/2.5/onecall';
    //?lat=38&lon=-9&exclude=minutely,daily&appid=ffb69c14f09f6408031db9a21212f54e
    Location location = Location();
    await location.getLocation();

    NetworkHelper networkHelper = NetworkHelper(
        url:
            '$url?lat=$latitude&lon=$longitude&exclude=minutely,daily&appid=$apiKey');
    var decodedData = await networkHelper.getData();
    return decodedData;
  }
}
