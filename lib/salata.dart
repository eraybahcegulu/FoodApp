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
  AssetImage currentImage = const AssetImage('assets/images/salatalar/akdeniz.png');
  String currentTitle = 'AKDENİZ SALATASI';
  String currentText = 'Malzemeler:\n• 150 gram Akdeniz yeşilliği\n• 4 adet cherry domates\n• 75 gram beyaz peynir\n• 3-4 yemek kaşığı zeytinyağı\n• 1/2 adet limon suyu\n• 1 yemek kaşığı nar ekşisi\n• 1 çay kaşığı tuz\n• 1 çay kaşığı karabiber';

  AssetImage AkdenizImage = const AssetImage('assets/images/salatalar/akdeniz.png');
  String AkdenizTitle = 'AKDENİZ SALATASI';
  String AkdenizText = 'Malzemeler:\n• 150 gram Akdeniz yeşilliği\n• 4 adet cherry domates\n• 75 gram beyaz peynir\n• 3-4 yemek kaşığı zeytinyağı\n• 1/2 adet limon suyu\n• 1 yemek kaşığı nar ekşisi\n• 1 çay kaşığı tuz\n• 1 çay kaşığı karabiber';

  AssetImage SezarImage = const AssetImage('assets/images/salatalar/sezar.png');
  String SezarTitle = 'SEZAR SALATASI';
  String SezarText = 'Malzemeler:\n• 1 adet tavuk göğsü\n• 1 adet göbek salata\n• 1 adet salatalık\n• 1 adet domates\n• 100 gram eski kaşar\n• 4 adet tost ekmeği\n• 2 yemek kaşığı tereyağ\n• 4 yemek kaşığı sıvı yağ\n• Pul biber\n• Kekik ';

  AssetImage RusImage = const AssetImage('assets/images/salatalar/rus.png');
  String RusTitle = 'RUS SALATASI';
  String RusText = 'Malzemeler:\n• 3 tane orta boy patates\n• 2 tane havuç\n• 1 su bardağı bezelye\n• 6-7 tane kornişon salatalık turşusu\n• 5 yemek kaşığı mayonez\n• 5 yemek kaşığı yoğurt 1 tatlı kaşığı tuz\n• Yarım çay kaşığı karabiber';

  AssetImage PatatesImage = const AssetImage('assets/images/salatalar/patates.png');
  String PatatesTitle = 'PATATES SALATASI';
  String PatatesText = 'Malzemeler:\n• 5-6 adet haşlanmış patates\n• 1/2 bağ taze soğan\n• 1 demet dereotu\n• 1/2 demey maydanoz\n• 1 adet rendelenmiş havuç\n• 1 çay bardağı sıvıyağ ya da zeytinyağı\n• 1 adet limonun suyu \n• Tuz ';

  void changeContainerLeft() {
    setState(() {
      if (currentColor == Colors.red) {
        currentColor = const Color.fromARGB(255, 61, 204, 137);
        currentImage = PatatesImage;
        currentTitle = PatatesTitle;
        currentText = PatatesText;

      } 

      else if(currentColor == const Color.fromARGB(255, 61, 204, 137)){
        currentColor = const Color.fromARGB(255, 178, 77, 196);
        currentImage = RusImage;
        currentTitle = RusTitle;
        currentText = RusText;
      }
      
      else if (currentColor == const Color.fromARGB(255, 178, 77, 196)){
        currentColor = Colors.blue;
        currentImage = SezarImage;
        currentTitle = SezarTitle;
        currentText = SezarText;
      }

      else if (currentColor==Colors.blue){
        currentColor = Colors.red;
        currentImage = AkdenizImage;
        currentTitle = AkdenizTitle;
        currentText = AkdenizText;
      }

      else {
        currentColor = Colors.red;
      }
    });
  }

    void changeContainerRight() {
    setState(() {
      if (currentColor == Colors.red) {
        currentColor = Colors.blue;
        currentImage = SezarImage;
        currentTitle = SezarTitle;
        currentText = SezarText;
      } 

      else if (currentColor == Colors.blue){
        currentColor = const Color.fromARGB(255, 178, 77, 196);
        currentImage = RusImage;
        currentTitle = RusTitle;
        currentText = RusText;
      }

      else if (currentColor == const Color.fromARGB(255, 178, 77, 196)) {
        currentColor = const Color.fromARGB(255, 61, 204, 137);
        currentImage = PatatesImage;
        currentTitle = PatatesTitle;
        currentText = PatatesText;
      }

      else if (currentColor == const Color.fromARGB(255, 61, 204, 137)){
        currentColor = Colors.red;
        currentImage = AkdenizImage;
        currentTitle = AkdenizTitle;
        currentText = AkdenizText;
      }

      else {
        currentColor == Colors.red;
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
                         Column(
                          children: [
                            Text(
                              currentText,
                              style: const TextStyle(
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
