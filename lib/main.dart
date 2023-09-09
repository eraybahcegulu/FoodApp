import 'package:flutter/material.dart';
import 'package:foodapp/views/salata.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Salata()),
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
                      Text(
                        'SALATALAR',
                        style: GoogleFonts.caveat(
                            fontSize: 30, fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
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
                      Text(
                        'PİZZALAR',
                        style: GoogleFonts.caveat(
                            fontSize: 30, fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
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
                      Text(
                        'MAKARNALAR',
                        style: GoogleFonts.caveat(
                            fontSize: 30, fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
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
                      Text(
                        'TATLILAR',
                        style: GoogleFonts.caveat(
                            fontSize: 30, fontWeight: FontWeight.w900),
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
