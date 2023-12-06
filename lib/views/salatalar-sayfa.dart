import 'package:flutter/material.dart';
import 'package:foodapp/views/tarife-bak/salatalar/akdeniz.dart';
import 'package:foodapp/views/tarife-bak/salatalar/kereviz.dart';
import 'package:foodapp/views/tarife-bak/salatalar/rus.dart';
import 'package:foodapp/views/tarife-bak/salatalar/patates.dart';
import 'package:foodapp/views/tarife-bak/salatalar/sezar.dart';
import 'package:foodapp/views/tarife-bak/salatalar/makarna.dart';
import 'package:google_fonts/google_fonts.dart';
import 'malzemeler/salatalar.dart';

void main() {
  runApp(Salata());
}

class Salata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double appBarTitleFontSize;
    if (MediaQuery.of(context).size.shortestSide < 400) {
      appBarTitleFontSize = 15;
    } else if (MediaQuery.of(context).size.shortestSide < 600) {
      appBarTitleFontSize = 18;
    } else {
      appBarTitleFontSize = 30;
    }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'SALATALAR',
            style: GoogleFonts.caveat(
                fontSize: appBarTitleFontSize, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.red,
          toolbarHeight: MediaQuery.of(context).size.height * 0.06,
        ),
        body: ContainerChanger(),
      ),
    );
  }
}

class ContainerChanger extends StatefulWidget {
  @override
  _ContainerChangerState createState() => _ContainerChangerState();
}

class _ContainerChangerState extends State<ContainerChanger> {
  List<SalataData> salatalar = Salatalar.getSalatalar();

  int currentIndex = 0;

  double containerOffset = 0.0;

  void changeContainerLeft() {
    setState(() {
      currentIndex = (currentIndex - 1) % salatalar.length;
      containerOffset = -0.05;
    });
    const animationDuration = Duration(milliseconds: 300);
    Future.delayed(animationDuration, () {
      setState(() {
        containerOffset = 0.0;
      });
    });
  }

  void changeContainerRight() {
    setState(() {
      currentIndex = (currentIndex + 1) % salatalar.length;
      containerOffset = 0.05;
    });
    const animationDuration = Duration(milliseconds: 300);
    Future.delayed(animationDuration, () {
      setState(() {
        containerOffset = 0.0;
      });
    });
  }

  void navigateToRecipePage() {
    Map<int, Widget> recipePages = {
      0: AkdenizSalatasi(),
      1: PatatesSalatasi(),
      2: RusSalatasi(),
      3: SezarSalatasi(),
      4: MakarnaSalatasi(),
      5: KerevizSalatasi(),
    };

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => recipePages[currentIndex]!),
    );
  }

  @override
  Widget build(BuildContext context) {
    double containerHeight;
    if (MediaQuery.of(context).size.shortestSide < 400) {
      containerHeight = MediaQuery.of(context).size.height * 0.86;
    } else if (MediaQuery.of(context).size.shortestSide < 600) {
      containerHeight = MediaQuery.of(context).size.height * 0.87;
    } else {
      containerHeight = MediaQuery.of(context).size.height * 0.88;
    }

    double containerWidth;
    if (MediaQuery.of(context).size.shortestSide < 400) {
      containerWidth = MediaQuery.of(context).size.width * 0.66;
    } else if (MediaQuery.of(context).size.shortestSide < 600) {
      containerWidth = MediaQuery.of(context).size.width * 0.75;
    } else {
      containerWidth = MediaQuery.of(context).size.width * 0.81;
    }

    double textFontSize;
    if (MediaQuery.of(context).size.shortestSide < 400) {
      textFontSize = 11.0;
    } else if (MediaQuery.of(context).size.shortestSide < 450) {
      textFontSize = 14.0;
    } else if (MediaQuery.of(context).size.shortestSide < 600) {
      textFontSize = 18.0;
    } else if (800 < MediaQuery.of(context).size.shortestSide) {
      textFontSize = 25.0;
    } else {
      textFontSize = 20.0;
    }

    double titleFontSize;
    if (MediaQuery.of(context).size.shortestSide < 400) {
      titleFontSize = 15.0;
    } else if (MediaQuery.of(context).size.shortestSide < 600) {
      titleFontSize = 18.0;
    } else {
      titleFontSize = 30.0;
    }

    double recipeTitleFontSize;
    if (MediaQuery.of(context).size.shortestSide < 400) {
      recipeTitleFontSize = 15.0;
    } else if (MediaQuery.of(context).size.shortestSide < 600) {
      recipeTitleFontSize = 16.0;
    } else {
      recipeTitleFontSize = 20.0;
    }

    double personTitleFontSize;
    if (MediaQuery.of(context).size.shortestSide < 400) {
      personTitleFontSize = 9.0;
    } else if (MediaQuery.of(context).size.shortestSide < 600) {
      personTitleFontSize = 11.0;
    } else {
      personTitleFontSize = 20.0;
    }

    double personFontSize;
    if (MediaQuery.of(context).size.shortestSide < 400) {
      personFontSize = 12.0;
    } else if (MediaQuery.of(context).size.shortestSide < 600) {
      personFontSize = 15.0;
    } else {
      personFontSize = 20.0;
    }

    double titlePreparationTime;
    if (MediaQuery.of(context).size.shortestSide < 400) {
      titlePreparationTime = 9.0;
    } else if (MediaQuery.of(context).size.shortestSide < 600) {
      titlePreparationTime = 11.0;
    } else {
      titlePreparationTime = 20.0;
    }

    double preparationTime;
    if (MediaQuery.of(context).size.shortestSide < 400) {
      preparationTime = 12.0;
    } else if (MediaQuery.of(context).size.shortestSide < 600) {
      preparationTime = 15.0;
    } else {
      preparationTime = 20.0;
    }

    double titleCoolingTime;
    if (MediaQuery.of(context).size.shortestSide < 400) {
      titleCoolingTime = 9.0;
    } else if (MediaQuery.of(context).size.shortestSide < 600) {
      titleCoolingTime = 11.0;
    } else {
      titleCoolingTime = 20.0;
    }

    double coolingTime;
    if (MediaQuery.of(context).size.shortestSide < 400) {
      coolingTime = 11.0;
    } else if (MediaQuery.of(context).size.shortestSide < 600) {
      coolingTime = 15.0;
    } else {
      coolingTime = 20.0;
    }

    double iconSize;
    if (MediaQuery.of(context).size.shortestSide < 400) {
      iconSize = 25.0;
    } else if (MediaQuery.of(context).size.shortestSide < 600) {
      iconSize = 30.0;
    } else {
      iconSize = 50.0;
    }
    return Scaffold(
      backgroundColor: salatalar[currentIndex].color,
      body: Padding(
        padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width * 0.02,
          MediaQuery.of(context).size.height * 0.02,
          MediaQuery.of(context).size.width * 0.01,
          MediaQuery.of(context).size.height * 0.01,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: changeContainerLeft,
                  icon: Icon(Icons.chevron_left),
                  iconSize: iconSize,
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  transform: Matrix4.translationValues(
                    MediaQuery.of(context).size.width * 0.5 * containerOffset,
                    0,
                    0,
                  ),
                  child: Container(
                    color: salatalar[currentIndex].color,
                    width: containerWidth,
                    height: containerHeight,
                    child: Center(
                      child: Column(
                        children: [
                          GestureDetector(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(25.0),
                              child: Image(
                                image: salatalar[currentIndex].image,
                                width: MediaQuery.of(context).size.width * 0.6,
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                salatalar[currentIndex].title,
                                style: GoogleFonts.caveat(
                                    fontSize: titleFontSize,
                                    fontWeight: FontWeight.w900),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.21,
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 1.5,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'KAÇ KİŞİLİK',
                                          style: GoogleFonts.caveat(
                                              fontSize: personTitleFontSize,
                                              fontWeight: FontWeight.w900),
                                        ),
                                        Text(
                                          salatalar[currentIndex].person,
                                          style: GoogleFonts.caveat(
                                              fontSize: personFontSize,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.24,
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 1.5,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'HAZIRLAMA SÜRESİ',
                                          style: GoogleFonts.caveat(
                                              fontSize: titlePreparationTime,
                                              fontWeight: FontWeight.w900),
                                        ),
                                        Text(
                                          salatalar[currentIndex]
                                              .preparationTime,
                                          style: GoogleFonts.caveat(
                                              fontSize: preparationTime,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.21,
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 1.5,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'SOĞUTMA SÜRESİ',
                                          style: GoogleFonts.caveat(
                                              fontSize: titleCoolingTime,
                                              fontWeight: FontWeight.w900),
                                        ),
                                        Text(
                                          salatalar[currentIndex].coolingTime,
                                          style: GoogleFonts.caveat(
                                              fontSize: coolingTime,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.005,
                          ),
                          Column(
                            children: [
                              Text(
                                salatalar[currentIndex].text,
                                style: GoogleFonts.cormorantInfant(
                                    fontSize: textFontSize,
                                    fontWeight: FontWeight.w900),
                              ),
                              ElevatedButton(
                                onPressed: navigateToRecipePage,
                                style: ElevatedButton.styleFrom(
                                  primary:
                                      salatalar[currentIndex].recipeButtonColor,
                                  onPrimary: Colors.white,
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          MediaQuery.of(context).size.height *
                                              0.03),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  elevation: 3,
                                ),
                                child: Text(
                                  salatalar[currentIndex].recipeTitle,
                                  style: GoogleFonts.caveat(
                                      fontSize: recipeTitleFontSize,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: changeContainerRight,
                    icon: Icon(Icons.chevron_right),
                    iconSize: iconSize,
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
