import 'package:clima/screens/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:clima/services/weather.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocation() async {
    var weatherData = await WeatherModel().getLocationWeather();
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LocationScreen(
            locationWeather: weatherData,
          ),
        ));
  }

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SpinKitRing(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}
