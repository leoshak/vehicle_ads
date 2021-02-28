import 'package:flutter/material.dart';
import 'package:vehicle_ads/config_reader.dart';
import 'package:vehicle_ads/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AdsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: context.read<Color>(themeProvider),
      ),
      home: HomeScreen(),
    );
  }

}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Text("Revealed secret: \n${ConfigReader.secretKey}"),
          ),
          Text("Counter is $counter"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

