import 'package:weather_app/weather/domain/repository/base_weather_repository.dart';

import '../entities/weather.dart';

class GetWeatherByCountryName {
  final BaseWeatherRepository _repository;

  GetWeatherByCountryName(this._repository);

  Future<Weather> execute(String cityName) async {
    return await _repository.getWeatherByCityName(cityName);
  }
}
