import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather/screens/forecast_screen.dart';
import 'package:weather/screens/main_screen.dart';
import 'package:weather/screens/search_screen.dart';
import 'package:weather/screens/settings_screen.dart';

import 'constants.dart';

int _selectedIndex = 0;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> _children = [
    MainScreen(),
    SearchScreen(),
    ForecastScreen(),
    SettingsScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: Colors.transparent,
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        unselectedItemColor: Color(0xFF615F73),
        selectedItemColor: Colors.white,
        currentIndex: _selectedIndex,
        items: bottomNavigationBarItemsList,
      ),
    );
  }
}
