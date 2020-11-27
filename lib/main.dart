import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid Counter',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        backgroundColor: Colors.grey,
      ),
      home: LandingPage()
    );
  }
}

class LandingPage extends StatefulWidget{
  @override
  _LandingPage createState() => _LandingPage();
}

class _LandingPage extends State<LandingPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Covid Deaths'),
      ),
      body: Center(
        child: CovidCounter(),
      ),
    );
  }

}

class CovidCounter extends StatefulWidget{
  @override
  _CovidCounter createState() => _CovidCounter();
}

class _CovidCounter extends State<CovidCounter>{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Placeholder")
    );
  }
  
}