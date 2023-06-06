import 'package:flutter/foundation.dart';
import 'package:weather_app/modal/weatherModal.dart';
import 'package:weather_app/utiles/apiHelper.dart';

class WeatherProvider extends ChangeNotifier {
  List<WeatherData>weatherList=[ ];
  ApiHelper apiHelper = ApiHelper();
  WeatherData weatherData=WeatherData();
  Future<WeatherData> getWeather()
  async {
    weatherData =await apiHelper.helper();
    return weatherData;
  }
}
