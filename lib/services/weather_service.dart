import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:retry/retry.dart';
import 'package:weather_app/utils/constants.dart';

class WeatherService{

  static var clientRetry = const RetryOptions(maxAttempts: 3,);
  static var client = http.Client();

  Future getWeatherList(lat,lon) async{
    final url = Uri.parse("${Constants.baseUrl}forecast?lat=$lat&lon=$lon&appid=${Constants.apiKey}");
    try{
      var response = await clientRetry.retry(() => client.get(url,).timeout(const Duration(seconds: 8)), retryIf: (e) => e is SocketException || e is TimeoutException,);
      var body = jsonDecode(response.body);
      if(body['cod'] == '200'){
        return body;
      }
      else{
        return null;
      }
    }
    catch (e){
      return null;
    }
  }

}