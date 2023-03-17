import 'package:flutter/material.dart';
import 'package:project/const/colors.dart';

class DefaultLayout extends StatelessWidget {
  final Widget child;

  const DefaultLayout({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PRIMARY_COLOR,
        title: Text('Default Layout'),
      ),
      body: child,
    );
  }
}
