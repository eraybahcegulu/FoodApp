import 'package:flutter/material.dart';

class AkdenizSalatasi extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Akdeniz Salatası Tarifi'),
      ),
      body: Center(
        child: Text(
          'Akdeniz Salatası',
          style: TextStyle(
            fontFamily: 'Caveat',
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
