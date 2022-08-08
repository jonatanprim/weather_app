import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/controllers/weather_controller.dart';
import 'package:weather_app/services/weather_service.dart';
import 'package:weather_app/utils/functions.dart';

void main(){

  group('Test Weather Service', (){
    final homeService = WeatherService();
    test('Test send API request', () async{
      expect(await homeService.getWeatherList(-6.175115064391812, 106.82708842419382), isNot(equals(null)));
    });
  });

  group('Test Weather controller', (){
    final weatherController = WeatherController();
    test('Test fetch data from API', () async{
      await weatherController.getWeatherList();
      expect(weatherController.weatherList.length, greaterThan(0));
    });
    test('Test isloading value == false after run getWeatherList', () async{
      await weatherController.getWeatherList();
      expect(weatherController.isLoading.value, false);
    });
    test('Test weather item data not null', () async{
      await weatherController.getWeatherList();
      expect(weatherController.weatherList[0].dtTxt, "2022-08-08 09:00:00");
      expect(weatherController.weatherList[0].weather![0].main, "Clouds");
      expect(weatherController.weatherList[0].main!.temp, 307.09);
    });

  });

  group('Test Functions Class', (){
    test('Get Celsius Temp', () async{
      expect(Functions.getCelsiusTemp(307.09), "33.9 \u2103");
    });

    test('Format Date Type 1', () async{
      expect(Functions.getDateWithDay("2022-08-08 09:00:00", 1), "Mon, Aug 08, 2022 09:00 AM");
    });

    test('Format Date Type 2', () async{
      expect(Functions.getDateWithDay("2022-08-08 09:00:00", 2), "Monday, August 08, 2022 \n09:00 AM");
    });
  });

}