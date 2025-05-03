import 'package:app_delivery/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const PanucciDelivery());
}

class PanucciDelivery extends StatelessWidget {
const PanucciDelivery({ super.key });

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 83, 83), ), useMaterial3: true),
      home: Home(),
    );
  }
}
