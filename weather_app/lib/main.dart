import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/weather_page_one.dart';
import 'package:weather_app/weather_provaider.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WeatherProvider(),
      child: const MaterialApp(
        home: PageOne(),
      ),
    );
  }
}
