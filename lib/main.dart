import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              
              Expanded(

                child: ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 60, 63, 241),
                    onPrimary: Colors.white,
                  ),
                  child: Text('Buton 1'),
                ),
              ),

              SizedBox(height: 10),

              Expanded(
                child: ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 187, 77, 238),
                    onPrimary: Colors.white,
                  ),
                  child: Text('Buton 2'),
                ),
              ),

              SizedBox(height: 10),

              Expanded(
                child: ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 241, 161, 85),
                    onPrimary: Colors.white,
                  ),
                  child: Text('Buton 3'),
                ),
              ),

              SizedBox(height: 10),

              Expanded(
                child: ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 240, 77, 28),
                    onPrimary: Colors.white,
                  ),
                  child: Text('Buton 4'),
                ),
              ),

              SizedBox(height: 10),
              
              Expanded(
                child: ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 20, 191, 197),
                    onPrimary: Colors.white,
                  ),
                  child: Text('Buton 5'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
