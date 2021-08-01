import 'package:flutter/material.dart';
import 'package:weather/constants.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kHomeBackgroundStyle,
      child: Center(
        child: Container(
          width: 300.0,
          height: 300.0,
          child: Center(
            child: Text(
              'TO BE CONTINUED',
              style: kPageTitleTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
