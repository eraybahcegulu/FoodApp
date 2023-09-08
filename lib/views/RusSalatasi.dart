import 'package:flutter/material.dart';

class RusSalatasi extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rus Salatası Tarifi'),
      ),
      body: Center(
        child: Text(
          'Rus Salatası',
          style: TextStyle(
            fontFamily: 'Caveat',
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
