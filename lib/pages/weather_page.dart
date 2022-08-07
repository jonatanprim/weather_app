import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/controllers/weather_controller.dart';
import 'package:weather_app/widgets/custom_appbar.dart';
import 'package:weather_app/widgets/loading_weather_card.dart';
import 'package:weather_app/widgets/weather_card.dart';

class WeatherPage extends StatelessWidget {
  
  WeatherPage({Key? key}) : super(key: key);
  
  final WeatherController weatherController = Get.put(WeatherController());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Weather App",
        titleSize: 20.0,
        isLight: true,
        enableBack: false,
        enableSearch: false,
        backgroundColor: Colors.blue,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          if (weatherController.isLoading.value == true) {
          } else {
            weatherController.getWeatherList();
          }
        },
        child: Expanded(
              child: Obx(()=> weatherController.isLoading.value == true ?
              ListView.builder(
                  physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                  padding: EdgeInsets.zero,
                  itemCount: 10,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return const LoadingWeatherCard();
                  })
                  :
              ListView.builder(
                  physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                  padding: EdgeInsets.zero,
                  itemCount: weatherController.weatherList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return WeatherCard(
                      weatherItem : weatherController.weatherList[index],
                    );
                  })
              ),
            ),
      ),
    );
  }
}
