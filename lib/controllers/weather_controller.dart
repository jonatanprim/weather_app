import 'package:get/get.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherController extends GetxController{
  var isLoading = false.obs;
  var weatherList = <WeatherModel>[
    WeatherModel(date: 'Tue, Jul 19, 2020 14:00 PM', weather: 'Clouds', temp: 34.0, imageUrl: 'test aja'),
    WeatherModel(date: 'Tue, Jul 19, 2020 14:00 PM', weather: 'Clouds', temp: 34.0, imageUrl: 'test aja'),
    WeatherModel(date: 'Tue, Jul 19, 2020 14:00 PM', weather: 'Clouds', temp: 34.0, imageUrl: 'test aja'),
    WeatherModel(date: 'Tue, Jul 19, 2020 14:00 PM', weather: 'Clouds', temp: 34.0, imageUrl: 'test aja'),
    WeatherModel(date: 'Tue, Jul 19, 2020 14:00 PM', weather: 'Clouds', temp: 34.0, imageUrl: 'test aja'),
    WeatherModel(date: 'Tue, Jul 19, 2020 14:00 PM', weather: 'Clouds', temp: 34.0, imageUrl: 'test aja'),
    WeatherModel(date: 'Tue, Jul 19, 2020 14:00 PM', weather: 'Clouds', temp: 34.0, imageUrl: 'test aja'),
  ].obs;


  Future<void> getWeatherList()async{

  }

}