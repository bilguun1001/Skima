import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: BodyWidget(),
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  final fruitNotfier = ValueNotifier<Color>(Colors.purple.shade600);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.purple.shade700,
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            Text('Bilguun'),
            SizedBox(height: 100),
            ElevatedButton(
              onPressed: () {
                print('I was clicked.');

                fruitNotfier.value = Colors.blue.shade200;
              },
              child: Text('Click me'),
            ),
          ],
        ),
      ),
    );
  }
}

