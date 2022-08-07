import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/pages/detail_weather_page.dart';
import 'package:weather_app/widgets/loading_block.dart';

class LoadingWeatherCard extends StatelessWidget {

  const LoadingWeatherCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.zero,
      onPressed: () {
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
            const LoadingBlock(height: 60, width: 60,),
            const SizedBox(
              width: 16.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                LoadingBlock(height: 20, width: 200,),
                SizedBox(
                  height: 6.0,
                ),
                LoadingBlock(height: 16, width: 60,),
                SizedBox(
                  height: 6.0,
                ),
                LoadingBlock(height: 16, width: 100,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
