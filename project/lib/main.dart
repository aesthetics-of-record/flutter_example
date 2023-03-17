import 'package:flutter/material.dart';
import 'package:project/screen/example_route_screen.dart';
import 'package:project/screen/home_screen.dart';

void main() {
  runApp(const _App());
}

class _App extends StatelessWidget {
  const _App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',

      routes: {
        '/': (context) => HomeScreen(),
        '/example': (context) => ExampleRouteScreen(),
      },
    );
  }
}

