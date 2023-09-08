import 'package:flutter/material.dart';
import 'package:foodapp/views/salata.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_core/firebase_core.dart';



void main(){
  WidgetsFlutterBinding.ensureInitialized();
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
                    
                    primary: Colors.red,
                    
                    onPrimary: Colors.white,
                  ),
                  child: Row(
                  children: [
                       Image.asset(
                      'assets/images/menu/salata.png',
                      width: 180,
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
                    
                    primary: Colors.red,
                   
                    onPrimary: Colors.white,
                  ),
                  child: Row(
                  children: [
                       Image.asset(
                      'assets/images/menu/pizza.png',
                      width: 180,
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
                    
                    primary: Colors.red,
                    
                    onPrimary: Colors.white,
                  ),
                  child: Row(
                  children: [
                       Image.asset(
                      'assets/images/menu/makarna.png',
                      width: 180,
                      height: 200, 
                    ),
                    const SizedBox(width: 10),
                    const Text('MAKARNALAR',
                    style: TextStyle(
                      fontFamily: 'Caveat',
                      fontSize: 32,
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
                    
                    primary: Colors.red,
                    
                    onPrimary: Colors.white,
                  ),
                  child: Row(
                  children: [
                       Image.asset(
                      'assets/images/menu/tatli.png',
                      width: 180,
                      height: 200, 
                    ),
                    const SizedBox(width: 10),
                    const Text('TATLILAR',
                    style: TextStyle(
                      fontFamily: 'Caveat',
                      fontSize: 35,
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
