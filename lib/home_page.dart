import 'package:flutter/material.dart';
import 'package:flutter_persian_calendar/month.dart';

import 'package:flutter_persian_calendar/selected_date.dart';
import 'package:flutter_persian_calendar/value_selector.dart';

class HomePage extends StatefulWidget {
  const HomePage({required this.title, Key? key}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentYear = 1401;
  Month _selectedMonth = months.first;
  String _selectedDate = '20 Aban 1364';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(elevation: 0, title: Text(widget.title)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SelectedData(value: _selectedDate),
              const SizedBox(height: 16),
              ValueSelector<int>(
                value: _currentYear,
                leftActionHandler: (int value) {
                  if (!(value - 1).isNegative) {
                    _currentYear = value - 1;
                    setState(() {});
                  }
                },
                rightActionHandler: (int value) =>
                    setState(() => _currentYear = value + 1),
              ),
              ValueSelector<Month>(
                value: _selectedMonth,
                leftActionHandler: (Month value) {
                  if (value.index + 1 <= 12) {
                    _selectedMonth = months
                        .firstWhere((month) => month.index == value.index + 1);

                    setState(() {});
                  }
                },
                rightActionHandler: (Month value) {
                  if (value.index - 1 > 0) {
                    _selectedMonth = months
                        .firstWhere((month) => month.index == value.index - 1);

                    setState(() {});
                  }
                },
              ),
            ],
          ),
        ),
      );
}
