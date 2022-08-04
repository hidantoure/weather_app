import 'package:weather_app/weather/domain/repository/weather_repository.dart';

import '../entities/weather.dart';

class GetWeatherByCountryName {
  final WeatherRepository _repository;

  GetWeatherByCountryName(this._repository);

  Future<Weather> execute(String cityName) async {
    return await _repository.getWeatherByCityName(cityName);
  }
}
