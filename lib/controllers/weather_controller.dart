import 'package:get/get.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class WeatherController extends GetxController{
  var isLoading = false.obs;
  double lat = -6.175115064391812;
  double lon = 106.82708842419382;
  var weatherList = <WeatherModel>[].obs;


  @override
  void onInit() {
    getWeatherList();
    super.onInit();
  }


  Future<void> getWeatherList()async{
    isLoading(true);
    final remoteData = await WeatherService().getWeatherList(lat,lon);
    if(remoteData != null){
      weatherList.clear();
      for(Map weather in remoteData['list']){
        weatherList.add(WeatherModel.fromJson(weather));
      }
      isLoading(false);
    }
    else{
      isLoading(false);
    }


  }

}