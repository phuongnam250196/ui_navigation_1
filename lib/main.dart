import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Route route = MaterialPageRoute(builder: (context) => SecondHome());
            Navigator.push(context, route);
          },
          child: const Text('Second Home'),
        ),
      ),
    );
  }
}

class SecondHome extends StatelessWidget {
  const SecondHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Home'),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go Back'),
        ),
      ),
    );
  }
}