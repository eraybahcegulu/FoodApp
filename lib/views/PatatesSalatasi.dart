import 'package:flutter/material.dart';

class PatatesSalatasi extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patates Salatası Tarifi'),
      ),
      body: Center(
        child: Text(
          'Patates Salatası',
          style: TextStyle(
            fontFamily: 'Caveat',
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
