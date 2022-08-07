import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/pages/detail_weather_page.dart';

class WeatherCard extends StatelessWidget {
  final WeatherModel weatherItem;
  const WeatherCard({
    Key? key,
    required this.weatherItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        Get.to(DetailWeatherPage(weatherDetails: weatherItem,));
      },
      splashColor: Colors.blue.withOpacity(0.4),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey.withOpacity(0.5)),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 60,
              height: 60,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                child: Image.asset("",
                  fit: BoxFit.cover,
                  height: 110,
                ),
              ),
            ),
            const SizedBox(
              width: 16.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(weatherItem.date,
                  style: const TextStyle(color: Colors.black87, fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Text(weatherItem.weather,
                  style: const TextStyle(color: Colors.black87, fontSize: 16, fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Text("Temp : ${weatherItem.temp} C",
                  style: const TextStyle(color: Colors.black87, fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
