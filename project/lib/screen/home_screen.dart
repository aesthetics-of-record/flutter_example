import 'package:flutter/material.dart';
import 'package:project/const/colors.dart';
import 'package:project/layout/default_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home Screen'),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: PRIMARY_COLOR,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/example',
                  arguments: null,
                );
              },
              child: Text('example route'),
            ),
          ],
        ),
      ),
    );
  }
}
