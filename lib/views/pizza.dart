import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:foodapp/views/pizzalar/margarita.dart';
import 'package:foodapp/views/pizzalar/havaii.dart';
import 'package:foodapp/views/pizzalar/pepperoni.dart';

void main() {
  runApp(Pizza());
}

class Pizza extends StatelessWidget {
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
            'PİZZALAR',
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
  List<PizzaData> pizzalar = [
    PizzaData(
      color: Color.fromARGB(255, 82, 120, 143),
      recipeButtonColor: Color.fromARGB(255, 90, 211, 150),
      image: AssetImage('assets/images/pizzalar/margarita_pizza.png'),
      title: 'MARGARİTA PİZZA',
      text:
          'Malzemeler:\n• 1 paket (yaklaşık 7 gram) instant maya\n• 1 su bardağı ılık su\n• 2.5 su bardağı un\n• 2 yemek kaşığı sıvı yağ\n• 1 çay kaşığı tuz ve karabiber\n• 1/2 su bardağı domates sosu\n• 1 diş sarımsak (isteğe bağlı, rendelenmiş)\n• 1 çay kaşığı kurutulmuş kekik\n• 1.5 su bardağı rendelenmiş mozzarella peyniri\n• Taze fesleğen yaprakları (isteğe bağlı)',
      recipeTitle: 'Tarife Bak',
      person: '4',
      preparationTime: '80 dakika',
      cookingTime: '15-20 dakika',
    ),
    PizzaData(
      color: Color.fromRGBO(219, 121, 121, 1),
      recipeButtonColor: Color.fromARGB(255, 201, 50, 193),
      image: AssetImage('assets/images/pizzalar/havaii_pizza.png'),
      title: 'HAVAİİ PİZZA',
      text:
          'Malzemeler:\n• 1 paket (yaklaşık 7 gram) instant maya\n• 1 su bardağı ılık su\n• 2.5 su bardağı un\n• 2 yemek kaşığı sıvı yağ\n• 1 çay kaşığı tuz\n• 1/2 su bardağı domates sosu\n• 1/4 su bardağı barbekü sos\n• 1/4 su bardağı rendelenmiş mozzarella peyniri\n• 150 gram dilimlenmiş jambon veya hindi jambonu\n• 1/2 su bardağı döner parçaları (isteğe bağlı)\n• 1/2 su bardağı dilimlenmiş ananas (konserve veya taze)\n• 1/4 su bardağı dilimlenmiş siyah zeytin (isteğe bağlı)\n• 1/4 su bardağı dilimlenmiş yeşil biber (isteğe bağlı)\n• 1/4 su bardağı dilimlenmiş turşu biber (isteğe bağlı)',
      recipeTitle: 'Tarife Bak',
      person: '4',
      preparationTime: '80 dakika',
      cookingTime: '15-20 dakika',
    ),
    PizzaData(
      color: Color.fromARGB(255, 129, 184, 67),
      recipeButtonColor: Color.fromARGB(255, 120, 154, 192),
      image: AssetImage('assets/images/pizzalar/pepperoni_pizza.png'),
      title: 'PEPPERONİ PİZZA',
      text:
          'Malzemeler:\n• 1 paket (yaklaşık 7 gram) instant maya\n• 1 su bardağı ılık su\n• 2.5 su bardağı un\n• 2 yemek kaşığı sıvı yağ\n• 1 çay kaşığı tuz\n• 1 su bardağı domates sosu\n• 1 diş sarımsak (isteğe bağlı, rendelenmiş)\n• 1 çay kaşığı kurutulmuş kekik\n• 1 çay kaşığı kurutulmuş fesleğen\n• Tuz ve karabiber (damak zevkinize göre)\n• 1.5 su bardağı rendelenmiş mozzarella peyniri\n• 100-150 gram dilimlenmiş pepperoni sosis\n•1/2 su bardağı dilimlenmiş siyah zeytin (isteğe bağlı)\n• 1/2 su bardağı dilimlenmiş yeşil biber (isteğe bağlı)\n• 1/4 su bardağı dilimlenmiş turşu biber (isteğe bağlı)',
      recipeTitle: 'Tarife Bak',
      person: '4',
      preparationTime: '80 dakika',
      cookingTime: '15-20 dakika',
    ),
  ];

  int currentIndex = 0;

  double containerOffset = 0.0;

  void changeContainerLeft() {
    setState(() {
      currentIndex = (currentIndex - 1) % pizzalar.length;
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
      currentIndex = (currentIndex + 1) % pizzalar.length;
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
    if (currentIndex == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MargaritaPizza()),
      );
    } else if (currentIndex == 1 || currentIndex == -2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HavaiiPizza()),
      );
    } else if (currentIndex == 2 || currentIndex == -1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HavaiiPizza()),
      );
    }
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
    }

    else if (MediaQuery.of(context).size.shortestSide < 450) {
      textFontSize = 14.0;
    } else if (MediaQuery.of(context).size.shortestSide < 600) {
      textFontSize = 18.0;
    } 
    else if (800 < MediaQuery.of(context).size.shortestSide  ) {
      textFontSize = 25.0;
    } 

    else {
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

    double titleCookingTime;
    if (MediaQuery.of(context).size.shortestSide < 400) {
      titleCookingTime = 9.0;
    } else if (MediaQuery.of(context).size.shortestSide < 600) {
      titleCookingTime = 11.0;
    } else {
      titleCookingTime = 20.0;
    }

    double cookingTime;
    if (MediaQuery.of(context).size.shortestSide < 400) {
      cookingTime = 11.0;
    } else if (MediaQuery.of(context).size.shortestSide < 600) {
      cookingTime = 15.0;
    } else {
      cookingTime = 20.0;
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
      backgroundColor: pizzalar[currentIndex].color,
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
                  color: pizzalar[currentIndex].color,
                  width: containerWidth,
                  height: containerHeight,
                  child: Center(
                    child: Column(
                      children: [
                        GestureDetector(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25.0),
                            child: Image(
                              image: pizzalar[currentIndex].image,
                              width: MediaQuery.of(context).size.width * 0.6,
                              height: MediaQuery.of(context).size.height * 0.15,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              pizzalar[currentIndex].title,
                              style: GoogleFonts.caveat(
                                  fontSize: titleFontSize,
                                  fontWeight: FontWeight.w900),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.21,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1.5,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'KAÇ KİŞİLİK',
                                        style: GoogleFonts.caveat(
                                            fontSize: personTitleFontSize,
                                            fontWeight: FontWeight.w900),
                                      ),
                                      Text(
                                        pizzalar[currentIndex].person,
                                        style: GoogleFonts.caveat(
                                            fontSize: personFontSize,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.24,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1.5,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'HAZIRLAMA SÜRESİ',
                                        style: GoogleFonts.caveat(
                                            fontSize: titlePreparationTime,
                                            fontWeight: FontWeight.w900),
                                      ),
                                      Text(
                                        pizzalar[currentIndex].preparationTime,
                                        style: GoogleFonts.caveat(
                                            fontSize: preparationTime,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.21,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1.5,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'PİŞİRME SÜRESİ',
                                        style: GoogleFonts.caveat(
                                            fontSize: titleCookingTime,
                                            fontWeight: FontWeight.w900),
                                      ),
                                      Text(
                                        pizzalar[currentIndex].cookingTime,
                                        style: GoogleFonts.caveat(
                                            fontSize: cookingTime,
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
                              pizzalar[currentIndex].text,
                              style: GoogleFonts.cormorantInfant(
                                  fontSize: textFontSize,
                                  fontWeight: FontWeight.w900),
                            ),
                            ElevatedButton(
                              onPressed: navigateToRecipePage,
                              style: ElevatedButton.styleFrom(
                                primary:
                                    pizzalar[currentIndex].recipeButtonColor,
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
                                pizzalar[currentIndex].recipeTitle,
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

class PizzaData {
  final Color color;
  final Color recipeButtonColor;
  final AssetImage image;
  final String title;
  final String text;
  final String recipeTitle;
  final String person;
  final String preparationTime;
  final String cookingTime;

  PizzaData({
    required this.color,
    required this.recipeButtonColor,
    required this.image,
    required this.title,
    required this.text,
    required this.recipeTitle,
    required this.person,
    required this.preparationTime,
    required this.cookingTime,
  });
}
