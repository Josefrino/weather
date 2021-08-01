import 'package:flutter/material.dart';

List months = [
  'january',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December'
];

var kHomeBackgroundStyle = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    stops: [0.9, 1.0, 0.2],
    colors: [
      Color(0xFF07082C),
      Color(0xFF064387),
      Color(0xFF07779E),
    ],
  ),
);

var kPageTitleTextStyle =
    TextStyle(color: Colors.white, fontSize: 30.0, fontFamily: 'Roboto');

var kMediumTextStyle =
    TextStyle(color: Color(0xFFACABCA), fontSize: 20.0, fontFamily: 'Roboto');

var kActiveColor = Color(0xFF1A73DB);
var kInactiveColor = Color(0xFF151741);

var bottomNavigationBarItemsList = [
  BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
  BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
  BottomNavigationBarItem(icon: Icon(Icons.add_chart), label: 'Forecast'),
  BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
];
