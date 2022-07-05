import 'package:flutter/material.dart';
import 'package:flutter_persian_calendar/home_page.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Persian Calendar',
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: const HomePage(title: 'Flutter Persian Calendar'),
      );
}
