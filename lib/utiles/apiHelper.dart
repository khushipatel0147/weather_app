import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app/modal/weatherModal.dart';

class ApiHelper {
  WeatherData weatherData = WeatherData();

  Future<WeatherData> helper() async {
    String? link =
        "https://api.openweathermap.org/data/2.5/weather?lat=21.1702&lon=72.8311&appid=6e2a97e08f38f6d24bc52bc3f1a5c97a";
    var response = await http.get(Uri.parse(link));
    var json = jsonDecode(response.body);
    weatherData = WeatherData.fromJson(json);
    return weatherData;
  }
}
