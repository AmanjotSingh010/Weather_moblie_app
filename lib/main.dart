import 'package:flutter/material.dart';
import 'package:weatherroo/page/about_us.dart';
import 'package:weatherroo/page/home.dart';
import 'package:weatherroo/page/contact_us.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class Mainpage extends StatefulWidget{
  @override
  _MainPageState createState() => _MainPageState();
  }
  class _MainPageState extends State <Mainpage>
  with SingleTickerProviderStateMixin
  {
  late TabController controller;


  @override
  void iniState(){
    super.initState();

    controller = TabController(length: 3, vsync: this);
  }
  @override
  void dispose()
  {
    controller.dispose();

  super.dispose();
  }


  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('Weatherroo'),
        centerTitle: true,
        bottom: TabBar(
          controller: controller,
          tabs: [
            Tab(text: 'Contact Us',icon: Icon(Icons.home)),
            Tab(text: 'Home',icon: Icon(Icons.home)),
            Tab(text: 'About Us',icon: Icon(Icons.home)),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          home(),
          about_us(),
          contact_us(),
        ],
      ),
    );
  }







