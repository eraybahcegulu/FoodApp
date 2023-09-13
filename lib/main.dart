import 'package:flutter/material.dart';
import 'package:foodapp/views/salata.dart';
import 'package:foodapp/views/pizza.dart';
import 'package:foodapp/views/makarna.dart';
import 'package:foodapp/views/tatli.dart';
import 'package:foodapp/views/iletisim.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_database/firebase_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
    double titleFontSize;
    if (MediaQuery.of(context).size.shortestSide < 400) {
      titleFontSize = 15;
    } else if (MediaQuery.of(context).size.shortestSide < 600) {
      titleFontSize = 25;
    } else {
      titleFontSize = 45;
    }

    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.fromLTRB(
            MediaQuery.of(context).size.width * 0.04,
            MediaQuery.of(context).size.height * 0.04,
            MediaQuery.of(context).size.width * 0.04,
            MediaQuery.of(context).size.height * 0.04,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return Salata();
                        },
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          const begin = Offset(1.0, 0.0);
                          const end = Offset.zero;
                          const curve = Curves.easeInOut;
                          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                          var offsetAnimation = animation.drive(tween);
                          return SlideTransition(position: offsetAnimation, child: child);
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    onPrimary: Colors.white,
                  ),
                  child: Row(
                    
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset(
                          'assets/images/menu/salata.png',
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.height * 0.15,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                      Text(
                        'SALATALAR',
                        style: GoogleFonts.caveat(
                            fontSize: titleFontSize,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.012),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return Pizza();
                        },
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          const begin = Offset(1.0, 0.0);
                          const end = Offset.zero;
                          const curve = Curves.easeInOut;
                          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                          var offsetAnimation = animation.drive(tween);
                          return SlideTransition(position: offsetAnimation, child: child);
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    onPrimary: Colors.white,
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset(
                          'assets/images/menu/pizza.jpg',
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.height * 0.15,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                      Text(
                        'PİZZALAR',
                        style: GoogleFonts.caveat(
                            fontSize: titleFontSize,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.012),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return Makarna();
                        },
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          const begin = Offset(1.0, 0.0);
                          const end = Offset.zero;
                          const curve = Curves.easeInOut;
                          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                          var offsetAnimation = animation.drive(tween);
                          return SlideTransition(position: offsetAnimation, child: child);
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    onPrimary: Colors.white,
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset(
                          'assets/images/menu/makarna.jpg',
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.height * 0.15,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                      Text(
                        'MAKARNALAR',
                        style: GoogleFonts.caveat(
                            fontSize: titleFontSize,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.012),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return Tatli();
                        },
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          const begin = Offset(1.0, 0.0);
                          const end = Offset.zero;
                          const curve = Curves.easeInOut;
                          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                          var offsetAnimation = animation.drive(tween);
                          return SlideTransition(position: offsetAnimation, child: child);
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    onPrimary: Colors.white,
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset(
                          'assets/images/menu/tatli.png',
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.height * 0.15,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                      Text(
                        'TATLILAR',
                        style: GoogleFonts.caveat(
                            fontSize: titleFontSize,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Iletisim()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 97, 97, 85),
                    onPrimary: Colors.white,
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                      const Icon(
                        FontAwesomeIcons.burger,
                        size: 40,
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                      const Icon(
                        FontAwesomeIcons.pizzaSlice,
                        size: 40,
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                      Text(
                        'İSTEDİĞİNİ EKLE',
                        style: GoogleFonts.caveat(
                            fontSize: titleFontSize,
                            fontWeight: FontWeight.w500),
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

