import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/weatherProvider.dart';
import 'package:weather_app/view/homeScreen.dart';
import 'package:weather_app/view/secondScreen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => WeatherProvider(),
      )
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomeScreen(),
        'second': (context) => SecondScreen(),
      },
    ),
  ));
}
