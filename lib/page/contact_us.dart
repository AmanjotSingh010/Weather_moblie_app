import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';

class contact_us extends StatelessWidget{
  @override
  Widget build(BuildContext context) => Scaffold(
    bottomNavigationBar: ContactUsBottomAppBar(
      companyName: 'Weatheroo',
      textColor: Colors.white,
      backgroundColor: Colors.purple.shade300,
      email: 'maria.fernandez@ue-germany.de',
      // textFont: 'Sail',
    ),
    backgroundColor: Colors.purple,
    body: ContactUs(
      cardColor: Colors.white,
      textColor: Colors.purple.shade900,
      email: 'maria.fernandez@ue-germany.de',
      companyName: 'Weatheroo',
      companyColor: Colors.purple.shade100,
      dividerThickness: 2,
      phoneNumber: '+17672309710',
      website: 'https://google.com',
      tagLine: 'Contact us',
      taglineColor: Colors.purple.shade100,
    ),
  );
}
