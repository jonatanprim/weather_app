import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/widgets/custom_appbar.dart';

class DetailWeatherPage extends StatelessWidget {
  final WeatherModel weatherDetails;

  const DetailWeatherPage({
    Key? key,
    required this.weatherDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Weather Details",
        titleSize: 20.0,
        isLight: true,
        enableBack: true,
        enableSearch: false,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        margin: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(weatherDetails.date,
              style: const TextStyle(color: Colors.black87, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 46.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(weatherDetails.temp.toString(),
                  style: const TextStyle(color: Colors.black87, fontSize: 46, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 40,
                ),
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
              ],
            ),
            const SizedBox(
              height: 46.0,
            ),
            Text(weatherDetails.weather,
              style: const TextStyle(color: Colors.black87, fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 46.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const Text("Temp (Min)",
                      style: TextStyle(color: Colors.black87, fontSize: 18, fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Text(weatherDetails.temp.toString(),
                      style: const TextStyle(color: Colors.black87, fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 100,
                ),
                Column(
                  children: <Widget>[
                    const Text("Temp (Max)",
                      style: TextStyle(color: Colors.black87, fontSize: 18, fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Text(weatherDetails.temp.toString(),
                      style: const TextStyle(color: Colors.black87, fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
