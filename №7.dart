import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _borderRadius = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurable Corner Radius'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(_borderRadius),
              ),
            ),
          ),
          Slider(
            value: _borderRadius,
            min: 0.0,
            max: 75.0,
            divisions: 75,
            label: _borderRadius.round().toString(),
            onChanged: (double value) {
              setState(() {
                _borderRadius = value;
              });
            },
          ),
          const Text('Adjust corner radius'),
        ],
      ),
    );
  }
}
