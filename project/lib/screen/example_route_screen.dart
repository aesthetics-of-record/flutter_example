import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:project/const/colors.dart';
import 'package:project/layout/default_layout.dart';

class ExampleRouteScreen extends StatelessWidget {
  const ExampleRouteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dio = Dio();

    return DefaultLayout(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('example route'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: PRIMARY_COLOR,
            ),
            onPressed: () async {
              final resp = await dio.get('http://13.209.14.107/api/post');
              print(resp.data[1]['title']);
            },
            child: Text('http get 요청'),
          ),
          ElevatedButton(
            onPressed: () {
              final resp = dio.post(
                'http://13.209.14.107/api/post',
                data: {
                  "title": "core",
                  "content": "test",
                  "author": "test",
                  "id": "test",
                },
              );
            },
            child: Text('http post 요청'),
          ),
        ],
      ),
    );
  }
}
