import 'package:flutter/material.dart';
import 'package:foodapp/salata.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Main());
  }
}

class Main extends StatelessWidget {
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Salata()),
            );
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
                      fontSize: 28,
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
                      fontSize: 28,
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
                      'assets/images/makarna.png',
                      width: 200,
                      height: 200, 
                    ),
                    const SizedBox(width: 10),
                    const Text('MAKARNALAR',
                    style: TextStyle(
                      fontFamily: 'Caveat',
                      fontSize: 28,
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
                      'assets/images/tatlı.png',
                      width: 200,
                      height: 200, 
                    ),
                    const SizedBox(width: 10),
                    const Text('TATLILAR',
                    style: TextStyle(
                      fontFamily: 'Caveat',
                      fontSize: 28,
                    ),
                    ),
                  ],
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
