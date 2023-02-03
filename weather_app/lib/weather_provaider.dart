import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:weather_app/weather_model.dart';

class WeatherProvider extends ChangeNotifier {
  WeatherBishkek? model;
  Future<void> getWeather({
    required String apiKey,
    required String lat,
    required String lon,
  }) async {
    Dio dio = Dio();
    final getWeather = await dio.get(
      'https://api.openweathermap.org/data/2.5/weather?',
      queryParameters: {
        'lat': lat,
        'lon': lon,
        'appid': apiKey,
        'units': 'metric',
        'lang': 'ru',
      },
    );
    model = WeatherBishkek.fromJson(getWeather.data);
    notifyListeners();
  }
}
