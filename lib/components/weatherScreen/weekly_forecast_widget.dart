import 'package:cs492_weather_app/components/weatherScreen/weather_screen.dart';
import 'package:cs492_weather_app/models/weather_forecast.dart';
import 'package:flutter/material.dart';

class WeeklyForecastWidget extends StatelessWidget {
  final List<WeatherForecast> weeklyForecasts;

  const WeeklyForecastWidget({Key? key, required this.weeklyForecasts, required WeatherScreen widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: weeklyForecasts.length,
        itemBuilder: (context, index) {
          final forecast = weeklyForecasts[index];

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 150,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        forecast.name, 
                      ),
        
                      Text('Temperature: ${forecast.temperature}°C'),
                      Text('Forecast: ${forecast.shortForecast}'),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
