import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:foodapp/views/makarnalar/kori_eriste.dart';
import 'package:foodapp/views/makarnalar/lazanya.dart';
import 'package:foodapp/views/makarnalar/spagetti.dart';

void main() {
  runApp(Makarna());
}

class Makarna extends StatelessWidget {
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
            'MAKARNALAR',
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
  List<MakarnaData> makarnalar = [
    MakarnaData(
      color: Color.fromARGB(255, 34, 53, 141),
      recipeButtonColor: Color.fromARGB(255, 145, 168, 102),
      image: AssetImage('assets/images/makarnalar/spagetti.png'),
      title: 'SPAGETTİ',
      text:
          'Malzemeler:\n• 250 gram spagetti makarna\n• 2 yemek kaşığı zeytinyağı\n• 3-4 diş sarımsak (ince dilimlenmiş veya ezilmiş)\n• 1/4 çay bardağı taze doğranmış maydanoz\n• Tuz\n• Karabiber\n• 1/4 su bardağı rendelenmiş parmesan peyniri (isteğe bağlı)\n• Kırmızı biber pul biber (isteğe bağlı)',
      recipeTitle: 'Tarife Bak',
      person: '2',
      preparationTime: '15 dakika',
      cookingTime: '10 dakika',
    ),
    MakarnaData(
      color: Color.fromRGBO(170, 36, 163, 1),
      recipeButtonColor: Color.fromARGB(255, 168, 87, 55),
      image: AssetImage('assets/images/makarnalar/lazanya.png'),
      title: 'LAZANYA',
      text:
          'Malzemeler:\n• 2 yemek kaşığı tereyağı veya margarin\n• 2 yemek kaşığı un\n• 2 su bardağı süt\n• Muskat rendesi (isteğe bağlı)\n• 2 yemek kaşığı zeytinyağı\n• 1 soğan (ince doğranmış)\n• 2 diş sarımsak (ince doğranmış veya ezilmiş)\n• 400 gram kıyma\n• 1 su bardağı domates sosu\n• 1 su bardağı domates püresi\n• 1 tatlı kaşığı kuru kekik\n• 1 tatlı kaşığı tuz ve karabiber\n• 250 gram lazanya makarnası\n• 2 su bardağı rendelenmiş mozzarella peyniri\n• 1 su bardağı rendelenmiş parmesan peyniri',
      recipeTitle: 'Tarife Bak',
      person: '4-6',
      preparationTime: '40 dakika',
      cookingTime: '30-35 dakika',
    ),
    MakarnaData(
      color: Color.fromARGB(255, 94, 206, 178),
      recipeButtonColor: Color.fromARGB(255, 147, 8, 228),
      image: AssetImage('assets/images/makarnalar/kori_soslu_eriste.png'),
      title: 'KÖRİ SOSLU ERİŞTE',
      text:
          'Malzemeler:\n• 250 gram erişte makarnası\n• 2 yemek kaşığı tereyağı veya zeytinyağı\n• 1 büyük soğan (ince doğranmış)\n• 2 diş sarımsak (ince doğranmış veya ezilmiş)\n• 2 yemek kaşığı köri tozu\n• 1 su bardağı krema\n• 1/2 su bardağı tavuk suyu veya sebze suyu\n• Tuz ve karabiber\n• İsteğe bağlı olarak taze kişniş veya taze fesleğen yaprakları (süslemek için)',
      recipeTitle: 'Tarife Bak',
      person: '2',
      preparationTime: '10-15 dakika',
      cookingTime: '15-20 dakika',
    ),
  ];

  int currentIndex = 0;

    double containerOffset = 0.0;

  void changeContainerLeft() {
    setState(() {
      currentIndex = (currentIndex - 1) % makarnalar.length;
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
      currentIndex = (currentIndex + 1) % makarnalar.length;
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
        MaterialPageRoute(builder: (context) => Spagetti()),
      );
    } else if (currentIndex == 1 || currentIndex == -2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Lazanya()),
      );
    } else if (currentIndex == 2 || currentIndex == -1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => KoriEriste()),
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

    else if (MediaQuery.of(context).size.shortestSide < 470) {
      textFontSize = 14.0;
    }
     else if (MediaQuery.of(context).size.shortestSide < 600) {
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
      backgroundColor: makarnalar[currentIndex].color,
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
                  color: makarnalar[currentIndex].color,
                  width: containerWidth,
                  height: containerHeight,
                  child: Center(
                    child: Column(
                      children: [
                        GestureDetector(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25.0),
                            child: Image(
                              image: makarnalar[currentIndex].image,
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
                              makarnalar[currentIndex].title,
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
                                        makarnalar[currentIndex].person,
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
                                        makarnalar[currentIndex]
                                            .preparationTime,
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
                                        makarnalar[currentIndex].cookingTime,
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
                              makarnalar[currentIndex].text,
                              style: GoogleFonts.cormorantInfant(
                                  fontSize: textFontSize,
                                  fontWeight: FontWeight.w900),
                            ),
                            ElevatedButton(
                              onPressed: navigateToRecipePage,
                              style: ElevatedButton.styleFrom(
                                primary:
                                    makarnalar[currentIndex].recipeButtonColor,
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
                                makarnalar[currentIndex].recipeTitle,
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

class MakarnaData {
  final Color color;
  final Color recipeButtonColor;
  final AssetImage image;
  final String title;
  final String text;
  final String recipeTitle;
  final String person;
  final String preparationTime;
  final String cookingTime;

  MakarnaData({
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
