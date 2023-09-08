import 'package:flutter/material.dart';

class SezarSalatasi extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sezar Salatası Tarifi'),
      ),
      body: Center(
        child: Text(
          'Sezar Salatası',
          style: TextStyle(
            fontFamily: 'Caveat',
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
