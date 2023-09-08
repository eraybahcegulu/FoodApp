import 'package:flutter/material.dart';
import 'package:foodapp/views/AkdenizSalatasi.dart';
import 'package:foodapp/views/RusSalatasi.dart';
import 'package:foodapp/views/PatatesSalatasi.dart';
import 'package:foodapp/views/SezarSalatasi.dart';

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
  List<SalataData> salatalar = [
    SalataData(
      color: Colors.red,
      recipeButtonColor: const Color.fromARGB(255, 143, 54, 244),
      image: AssetImage('assets/images/salatalar/akdeniz.png'),
      title: 'AKDENİZ SALATASI',
      text:
          'Malzemeler:\n• 150 gram Akdeniz yeşilliği\n• 4 adet cherry domates\n• 75 gram beyaz peynir\n• 3-4 yemek kaşığı zeytinyağı\n• 1/2 adet limon suyu\n• 1 yemek kaşığı nar ekşisi\n• 1 çay kaşığı tuz\n• 1 çay kaşığı karabiber',
      recipeTitle: 'Akdeniz Salatası Tarifi',
    ),
    SalataData(
      color: const Color.fromARGB(255, 61, 204, 137),
      recipeButtonColor: Colors.red,
      image: AssetImage('assets/images/salatalar/patates.png'),
      title: 'PATATES SALATASI',
      text:
          'Malzemeler:\n• 5-6 adet haşlanmış patates\n• 1/2 bağ taze soğan\n• 1 demet dereotu\n• 1/2 demey maydanoz\n• 1 adet rendelenmiş havuç\n• 1 çay bardağı sıvıyağ ya da zeytinyağı\n• 1 adet limonun suyu \n• Tuz ',
      recipeTitle: 'Patates Salatası Tarifi',
    ),
    SalataData(
      color: const Color.fromARGB(255, 178, 77, 196),
      recipeButtonColor: Color.fromARGB(255, 37, 187, 94),
      image: AssetImage('assets/images/salatalar/rus.png'),
      title: 'RUS SALATASI',
      text:
          'Malzemeler:\n• 3 tane orta boy patates\n• 2 tane havuç\n• 1 su bardağı bezelye\n• 6-7 tane kornişon salatalık turşusu\n• 5 yemek kaşığı mayonez\n• 5 yemek kaşığı yoğurt 1 tatlı kaşığı tuz\n• Yarım çay kaşığı karabiber',
      recipeTitle: 'Rus Salatası Tarifi',
    ),
    SalataData(
      color: Colors.blue,
      recipeButtonColor: Color.fromARGB(255, 180, 65, 12),
      image: AssetImage('assets/images/salatalar/sezar.png'),
      title: 'SEZAR SALATASI',
      text:
          'Malzemeler:\n• 1 adet tavuk göğsü\n• 1 adet göbek salata\n• 1 adet salatalık\n• 1 adet domates\n• 100 gram eski kaşar\n• 4 adet tost ekmeği\n• 2 yemek kaşığı tereyağ\n• 4 yemek kaşığı sıvı yağ\n• Pul biber\n• Kekik ',
      recipeTitle: 'Sezar Salatası Tarifi',
    ),

  ];

  int currentSalataIndex = 0;

  void changeContainerLeft() {
    setState(() {
      currentSalataIndex = (currentSalataIndex - 1) % salatalar.length;
    });
  }

  void changeContainerRight() {
    setState(() {
      currentSalataIndex = (currentSalataIndex + 1) % salatalar.length;
    });
  }

  void navigateToRecipePage() {
    if (currentSalataIndex == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AkdenizSalatasi()),
      );
    } else if (currentSalataIndex == 1 || currentSalataIndex == -3) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PatatesSalatasi()),
      );
    } else if (currentSalataIndex == 2 || currentSalataIndex == -2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RusSalatasi()),
      );
    } else if (currentSalataIndex == 3 || currentSalataIndex == -1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SezarSalatasi()),
      );
    }
 
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
                  icon: Icon(Icons.chevron_left),
                ),
                Container(
                  color: salatalar[currentSalataIndex].color,
                  width: 300,
                  height: 660,
                  child: Center(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: changeContainerLeft,
                          child: Image(
                            image: salatalar[currentSalataIndex].image,
                          ),
                        ),
                        Text(
                          salatalar[currentSalataIndex].title,
                          style: TextStyle(
                            fontFamily: 'Caveat',
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(height: 10),
                        Column(
                          children: [
                            Text(
                              salatalar[currentSalataIndex].text,
                              style: TextStyle(
                                fontFamily: 'Caveat',
                                fontSize: 25,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(height: 5),
                            ElevatedButton(
                              onPressed: navigateToRecipePage,
                              style: ElevatedButton.styleFrom(
                                primary: salatalar[currentSalataIndex]
                                    .recipeButtonColor, 
                                onPrimary: Colors
                                    .white, 
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical:
                                        10), 
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      10), 
                                ),
                                elevation:
                                    3, 
                              ),
                              child: Text(
                                salatalar[currentSalataIndex].recipeTitle,
                                style: TextStyle(
                                  fontFamily: 'Caveat',
                                  fontSize: 20,
                                ),
                              ),
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
                    icon: Icon(Icons.chevron_right),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SalataData {
  final Color color;
  final Color recipeButtonColor; // Yeni eklenen özellik
  final AssetImage image;
  final String title;
  final String text;
  final String recipeTitle;

  SalataData({
    required this.color,
    required this.recipeButtonColor, // Yeni eklenen özellik
    required this.image,
    required this.title,
    required this.text,
    required this.recipeTitle,
  });
}
