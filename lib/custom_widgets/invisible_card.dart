import 'package:flutter/material.dart';

class InvisibleCard extends StatelessWidget {
  InvisibleCard({this.title, this.data, this.type});

  final data;
  final title;
  final type;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            '$title',
            style: TextStyle(color: Color(0xFFACABCA), fontSize: 15.0),
          ),
          Text(
            '$data $type',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          )
        ],
      ),
    );
  }
}
