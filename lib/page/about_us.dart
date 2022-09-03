import 'package:flutter/material.dart';

class about_us extends StatelessWidget{
  @override
  Widget build(BuildContext context) => Scaffold(
    body: Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image(image: NetworkImage('https://www.noaa.gov/sites/default/files/styles/landscape_width_650/public/legacy/image/2019/Jun/iStock-477110708%20%281%29.jpg?itok=qLIDK-SD')),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: const Text("Who are we"),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              color: Colors.white,
              child: const Text("We are a group of Digital Business and Data Science students, studying at the University of Applied Sciences Europe. As part of our final project, we have developed the website to function as an international weather website for users across the globe. Our goal is to provide a navigable, smooth, easy to understand weather website that can be of quick practical use to our users. On our website you will find your local weather conditions, related to your current location, city, date, and time. We hope that our website can be of use to you and that provide you with the information you are seeking."),
            ),
            Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: const Text("Our weather technology")
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              color: Colors.white,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: const Text("Our technology consits on supercomputers that collect our data by doppler radar, radiosondes, weather satellites, buoys and other instruments that fed into computerized numerical forecast models. The models use equations, along with new and past weather data, to provide forecast guidance to our meteorologists. and our computer processing system that combines all our data into a graphical interface that our forecasters use to analyze data and prepare and issue forecasts, watches, warnings. This system uses the supercomputers to process data from doppler radar, radiosondes, weather satellites, and other sources using models and forecast guidance products.")
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
