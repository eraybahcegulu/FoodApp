import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              
              Expanded(
                
                child: ElevatedButton( 
                  onPressed: () {
                  },
                  
                  style: ElevatedButton.styleFrom(
                    // ignore: deprecated_member_use
                    primary: const Color.fromARGB(255, 60, 63, 241),
                    // ignore: deprecated_member_use
                    onPrimary: Colors.white,
                  ),
                  child: Row(
                  children: [
                       Image.asset(
                      'assets/images/salata.png',
                      width: 200,
                      height: 200, 
                    ),
                    const SizedBox(width: 10),
                    const Text('SALATALAR',
                    style: TextStyle(
                      fontFamily: 'Caveat',
                      fontSize: 35,
                    ),
                    ),
                  ],
                ),
                ),
              ),
            
              const SizedBox(height: 10),

              Expanded(
                
                child: ElevatedButton( 
                  onPressed: () {
                  },
                  
                  style: ElevatedButton.styleFrom(
                    // ignore: deprecated_member_use
                    primary: const Color.fromARGB(255, 60, 63, 241),
                    // ignore: deprecated_member_use
                    onPrimary: Colors.white,
                  ),
                  child: Row(
                  children: [
                       Image.asset(
                      'assets/images/pizza.png',
                      width: 200,
                      height: 200, 
                    ),
                    const SizedBox(width: 10),
                    const Text('PİZZALAR',
                    style: TextStyle(
                      fontFamily: 'Caveat',
                      fontSize: 35,
                    ),
                    ),
                  ],
                ),
                ),
              ),

              const SizedBox(height: 10),

              Expanded(
                child: ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 240, 77, 28),
                    onPrimary: Colors.white,
                  ),
                  child: const Text('Buton 4'),
                ),
              ),

              const SizedBox(height: 10),

              Expanded(
                child: ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 20, 191, 197),
                    onPrimary: Colors.white,
                  ),
                  child: const Text('Buton 5'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
