import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather/constants.dart';

import '../custom_widgets/location_card.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          decoration: kHomeBackgroundStyle,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  'Pick Location',
                  style: kPageTitleTextStyle,
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Find the area or city that you want to know the detailed weather info at this time',
                  style: kMediumTextStyle.copyWith(fontSize: 15.0),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 50.0,
                        child: TextField(
                          style: TextStyle(color: Color(0xFFA4A4C1)),
                          decoration: InputDecoration(
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            alignLabelWithHint: true,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color(0xFFA4A4C1),
                            ),
                            border: OutlineInputBorder(),
                            hintText: 'Search',
                            hintStyle: TextStyle(
                              color: Color(0xFF3F3E5E),
                            ),
                          ),
                          cursorColor: Color(0xFFA4A4C1),
                        ),
                        decoration: BoxDecoration(
                            color: kInactiveColor,
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      child: Icon(
                        Icons.location_on_outlined,
                        color: Color(0xFF8181A1),
                      ),
                      width: 60.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                          color: kInactiveColor,
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: LocationCard(
                  temp: 23,
                  weather: 'clean',
                  city: 'Lisbon',
                  image: 'assets/images/009-cloudy.png',
                  backgroundColor: kInactiveColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
