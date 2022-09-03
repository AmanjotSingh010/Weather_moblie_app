import 'package:flutter/material.dart';
import 'package:weatherroo/data_service.dart';
import 'package:weatherroo/models.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _cityTextController = TextEditingController();
  final _dataService = DataService();

  WeatherResponse? _response;
  @override

  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.deepPurple.shade400,
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (_response != null)
            Column(
              children: [
                Image.network(_response!.iconUrl),
                Text(
                  '${_response!.tempInfo.temperature}°',
                  style: TextStyle(fontSize: 45, color: Colors.white),
                ),
                Text(_response!.weatherInfo.description,style: TextStyle(fontSize:20,color: Colors.white)),
              ],
            ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 45),
            child: SizedBox(
              width: 200,

              child: TextField(
                  controller: _cityTextController,
                  decoration: InputDecoration(labelText: 'Search for City'),
                  style: TextStyle(fontSize:25, color: Colors.white),
                  textAlign: TextAlign.center),

            ),
          ),
          new SizedBox(
              width: 130.0,
              height: 55.0,
              child: ElevatedButton(onPressed: _search,
                child: Text('Search',style: TextStyle(fontSize: 25),),
                style: ElevatedButton.styleFrom(primary: Colors.deepPurple.shade700),

              )),
        ],
      ),
    ),
  );
  void _search() async {
    final response = await _dataService.getWeather(_cityTextController.text);
    setState(() => _response = response);
}
}

class home extends StatelessWidget{
  @override
  Widget build(BuildContext context) => Scaffold(
  );
}