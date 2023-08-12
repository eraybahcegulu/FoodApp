import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(Salata());
}

class Salata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContainerChanger(),
    );
  }
}

class ContainerChanger extends StatefulWidget {
  @override
  _ContainerChangerState createState() => _ContainerChangerState();
}

class _ContainerChangerState extends State<ContainerChanger> {
  Color currentColor = Colors.red;
  AssetImage currentImage = const AssetImage('assets/images/salatalar/salata.png');
  String currentTitle = 'AKDENİZ SALATASI';

  void changeContainerLeft() {
    setState(() {
      if (currentColor == Colors.red) {
        currentColor = Colors.blue;
        currentImage = const AssetImage('assets/images/salatalar/salata.png');
      } else {
        currentColor = Colors.red;
      }
    });
  }

    void changeContainerRight() {
    setState(() {
      if (currentColor == Colors.red) {
        currentColor = Colors.blue;
        currentImage = const AssetImage('assets/images/salatalar/salata.png');
      } else {
        currentColor = Colors.red;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: changeContainerLeft,
                    icon: const FaIcon(FontAwesomeIcons.chevronLeft)),
                Container(
                  color: currentColor,
                  width: 300,
                  height: 660,
                  child: Center(
                    child: Column(
                      children: [
                        GestureDetector(
                        onTap: changeContainerLeft,
                        child: Image(
                          image: currentImage ),
                        ),
                         Text(
                          currentTitle,
                          style: const TextStyle(
                            fontFamily: 'Caveat',
                            fontSize: 35,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Column(
                          children: [
                            Text(
                              'Malzemeler:\n• 150 gram Akdeniz yeşilliği\n• 4 adet cherry domates\n• 75 gram beyaz peynir\n• 3-4 yemek kaşığı zeytinyağı\n• 1/2 adet limon suyu\n• 1 yemek kaşığı nar ekşisi\n• 1 çay kaşığı tuz\n• 1 çay kaşığı karabiber',
                              style: TextStyle(
                                fontFamily: 'Caveat',
                                fontSize: 30,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                      onPressed: changeContainerRight,
                      icon: const FaIcon(FontAwesomeIcons.chevronRight)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
