import 'package:weather_app/weather/data/datasource/remote_data_source.dart';
import 'package:weather_app/weather/domain/entities/weather.dart';
import 'package:weather_app/weather/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
  final BaseRemoteDataSource _baseRemoteDataSource;

  WeatherRepository(this._baseRemoteDataSource);

  @override
  Future<Weather> getWeatherByCityName(String cityName) async {
    return (await _baseRemoteDataSource.getWeatherByCountryName(cityName))!;
  }
}
