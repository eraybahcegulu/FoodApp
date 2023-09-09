import 'package:flutter/material.dart';
import 'package:foodapp/views/salads/AkdenizSalatasi.dart';
import 'package:foodapp/views/salads/KerevizSalatasi.dart';
import 'package:foodapp/views/salads/RusSalatasi.dart';
import 'package:foodapp/views/salads/PatatesSalatasi.dart';
import 'package:foodapp/views/salads/SezarSalatasi.dart';
import 'package:foodapp/views/salads/MakarnaSalatasi.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Salata());
}

class Salata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    double appBarTitleFontSize;
if (MediaQuery.of(context).size.shortestSide < 600) {
  
  appBarTitleFontSize = 18;
} else {

  appBarTitleFontSize = 30;
}
    return MaterialApp(
      
      home: Scaffold(
        appBar: AppBar(
          title: Text('SALATALAR',
          
          style: GoogleFonts.caveat( fontSize: appBarTitleFontSize, fontWeight: FontWeight.bold),),
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
  List<SalataData> salatalar = [
    SalataData(
      color: Colors.red,
      recipeButtonColor: const Color.fromARGB(255, 143, 54, 244),
      image: AssetImage('assets/images/salads/akdeniz_salatasi.png'),
      title: 'AKDENİZ SALATASI',
      text:
          'Malzemeler:\n• 2 büyük domates\n• 1 salatalık\n• 1 yeşil biber\n• 1 kırmızı biber\n• 1 soğan\n• 1/2 su bardağı siyah zeytin (çekirdekleri çıkarılmış)\n• 1/2 su bardağı yeşil zeytin (çekirdekleri çıkarılmış)\n• 200 gram beyaz peynir veya lor peyniri\n• Taze roka veya taze nane yaprakları (isteğe bağlı)\n• 1/4 su bardağı zeytinyağı\n• 2 yemek kaşığı limon suyu\n• 1 diş sarımsak (isteğe bağlı, rendelenmiş\n• Tuz ve karabiber (damak zevkinize göre))',
      recipeTitle: 'Tarife Bak',
      person: '4',
      preparationTime: '15-20 dakika',
      coolingTime: 'yok',
    ),
    SalataData(
      color: const Color.fromARGB(255, 61, 204, 137),
      recipeButtonColor: Colors.red,
      image: AssetImage('assets/images/salads/patates_salatasi.png'),
      title: 'PATATES SALATASI',
      text:
          'Malzemeler:\n• 4 büyük patates\n• 3 yumurta (haşlanmış ve doğranmış)\n• 1/2 su bardağı mayonez\n• 2 yemek kaşığı yoğurt (isteğe bağlı)\n• 1 yemek kaşığı hardal (isteğe bağlı)\n• 2 çay kaşığı sirke veya limon suyu\n• 1/2 çay kaşığı tuz (veya damak zevkinize göre)\n• 1/4 çay kaşığı karabiber\n• 1/4 su bardağı doğranmış taze soğan (isteğe bağlı)\n •1/4 su bardağı doğranmış taze dereotu veya maydanoz (isteğe bağlı)',
      recipeTitle: 'Tarife Bak',
      person: '4-6',
      preparationTime: '30 dakika',
      coolingTime: '60 dakika',
    ),
    SalataData(
      color: const Color.fromARGB(255, 178, 77, 196),
      recipeButtonColor: Color.fromARGB(255, 37, 187, 94),
      image: AssetImage('assets/images/salads/rus_salatasi.png'),
      title: 'RUS SALATASI',
      text:
          'Malzemeler:\n• 4 büyük haşlanmış patates\n• 3 büyük haşlanmış havuç\n• 200 gram haşlanmış yeşil bezelye (konserve veya taze)\n• 200 gram haşlanmış döner parçaları (isteğe bağlı, tavuk veya hindi de kullanabilirsiniz)\n• 4 haşlanmış yumurta\n• 1/2 su bardağı haşlanmış mısır (konserve veya taze\n• 1/2 su bardağı mayonez\n• 1/4 su bardağı yoğurt (isteğe bağlı)\n• 2-3 yemek kaşığı hardal (isteğe bağlı)\n• Tuz ve karabiber (damak zevkinize göre)\n• 1/2 su bardağı doğranmış taze soğan (isteğe bağlı)\n• Taze dereotu veya maydanoz yaprakları (süslemek için)',
      recipeTitle: 'Tarife Bak',
      person: '4-6',
      preparationTime: '30 dakika',
      coolingTime: '60 dakika',
    ),
    SalataData(
      color: Colors.blue,
      recipeButtonColor: Color.fromARGB(255, 180, 65, 12),
      image: AssetImage('assets/images/salads/sezar_salatasi.png'),
      title: 'SEZAR SALATASI',
      text:
          'Malzemeler:\n• 2 adet kıvırcık marul\n• 1/2 su bardağı rendelenmiş parmesan peyniri\n• 1 su bardağı çıtır ekmek kırıntıları veya krutonlar (isteğe bağlı)\n• 2 büyük tavuk göğsü\n• 2 yemek kaşığı zeytinyağı\n• Tuz ve karabiber\n• 1/2 su bardağı mayonez\n• 1/4 su bardağı rendelenmiş parmesan peyniri\n• 2 diş sarımsak (isteğe bağlı, rendelenmiş veya dövülmüş)\n• 2 yemek kaşığı limon suyu\n• 1 yemek kaşığı dijon hardalı\n• 1 yemek kaşığı Worcestershire sosu',
      recipeTitle: 'Tarife Bak',
      person: '2',
      preparationTime: '30 dakika',
      coolingTime: 'yok',
    ),

    SalataData(
      color: Color.fromARGB(255, 173, 87, 120),
      recipeButtonColor: Color.fromARGB(255, 109, 126, 182),
      image: AssetImage('assets/images/salads/makarna_salatasi.png'),
      title: 'MAKARNA SALATASI',
      text:
          'Malzemeler:\n• 2 su bardağı makarna (istediğiniz türde)\n• 1 su bardağı haşlanmış mısır (konserve veya taze)\n• 1/2 su bardağı doğranmış salatalık\n• 1/2 su bardağı doğranmış domates\n• 1/4 su bardağı doğranmış yeşil biber\n• 1/4 su bardağı doğranmış kırmızı biber\n• 1/4 su bardağı doğranmış mor soğan (isteğe bağlı)\n• 1/4 su bardağı doğranmış taze maydanoz veya taze dereotu (isteğe bağlı)\n• 1/2 su bardağı mayonez\n• 2 yemek kaşığı yoğurt (isteğe bağlı)\n• 2 yemek kaşığı sızma zeytinyağı\n• 2 yemek kaşığı beyaz sirke veya limon suyu\n• 1 diş sarımsak (isteğe bağlı, rendelenmiş veya ezilmiş\n• Tuz ve karabiber (damak zevkinize göre))',
      recipeTitle: 'Tarife Bak',
      person: '4-6',
      preparationTime: '15-20 dakika',
      coolingTime: '60 dakika',
    ),

        SalataData(
      color: Color.fromARGB(255, 57, 173, 102),
      recipeButtonColor: Color.fromARGB(255, 93, 119, 231),
      image: AssetImage('assets/images/salads/kereviz_salatasi.png'),
      title: 'KEREVİZ SALATASI',
      text:
          'Malzemeler:\n• 3 büyük kereviz (kabuklarını soyun ve doğrayın)\n• 1/2 su bardağı mayonez\n• 1 yemek kaşığı yoğurt (isteğe bağlı)\n• 1 yemek kaşığı limon suyu\n• 1 çay bardağı ceviz içi (isteğe bağlı, iri doğranmış)\n• 1/2 su bardağı ceviz içi (kabuklarından arındırılmış ve iri doğranmış)\n• Tuz ve karabiber (damak zevkinize göre)\n• Taze dereotu veya maydanoz yaprakları (süslemek için)',
      recipeTitle: 'Tarife Bak',
      person: '4-6',
      preparationTime: '15-20 dakika',
      coolingTime: 'yok',
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
    } else if (currentSalataIndex == 1 || currentSalataIndex == -5) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PatatesSalatasi()),
      );
    } else if (currentSalataIndex == 2 || currentSalataIndex == -4) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RusSalatasi()),
      );
    } else if (currentSalataIndex == 3 || currentSalataIndex == -3) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SezarSalatasi()),
      );
    } else if (currentSalataIndex == 4 || currentSalataIndex == -2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MakarnaSalatasi()),
      );
    } else if (currentSalataIndex == 5 || currentSalataIndex == -1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => KerevizSalatasi()),
      );
    }
  }

  

  @override
  Widget build(BuildContext context) {


    double containerWidth;
if (MediaQuery.of(context).size.shortestSide < 600) {
  
  containerWidth = MediaQuery.of(context).size.width * 0.72;
} else {

  containerWidth = MediaQuery.of(context).size.width * 0.81;
}

    double textFontSize;
if (MediaQuery.of(context).size.shortestSide < 600) {
  
  textFontSize = 15.0;
} else {

  textFontSize = 26.0;
}

    double titleFontSize;
if (MediaQuery.of(context).size.shortestSide < 600) {
  
  titleFontSize = 18.0;
} else {

  titleFontSize = 40.0;
}

    double recipeTitleFontSize;
if (MediaQuery.of(context).size.shortestSide < 600) {
  
  recipeTitleFontSize = 16.0;
} else {

  recipeTitleFontSize = 25.0;
}

    double personTitleFontSize;
if (MediaQuery.of(context).size.shortestSide < 600) {
  
  personTitleFontSize = 11.0;
} else {

  personTitleFontSize = 22.0;
}

    double personFontSize;
if (MediaQuery.of(context).size.shortestSide < 600) {
  
  personFontSize = 15.0;
} else {

  personFontSize = 22.0;
}

    double titlePreparationTime;
if (MediaQuery.of(context).size.shortestSide < 600) {
  
  titlePreparationTime = 11.0;
} else {

  titlePreparationTime = 22.0;
}

    double preparationTime;
if (MediaQuery.of(context).size.shortestSide < 600) {
  
  preparationTime = 15.0;
} else {

  preparationTime = 22.0;
}

    double titleCoolingTime;
if (MediaQuery.of(context).size.shortestSide < 600) {
  
  titleCoolingTime = 11.0;
} else {

  titleCoolingTime = 22.0;
}

    double coolingTime;
if (MediaQuery.of(context).size.shortestSide < 600) {
  
  coolingTime = 15.0;
} else {

  coolingTime = 22.0;
}

    double iconSize;
if (MediaQuery.of(context).size.shortestSide < 600) {
  
  iconSize = 30.0;
} else {

  iconSize = 50.0;
}
    return Scaffold(
      backgroundColor: salatalar[currentSalataIndex].color,
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
                Container(
                  
                  color: salatalar[currentSalataIndex].color,
                  width: containerWidth,
                  height: MediaQuery.of(context).size.height * 0.87,
                  child: Center(
                    child: Column(
                      children: [
                        GestureDetector(
                          child: Image(
                            image: salatalar[currentSalataIndex].image,
                              width: MediaQuery.of(context).size.width * 0.6,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              salatalar[currentSalataIndex].title,
                              style: GoogleFonts.caveat( fontSize: titleFontSize, fontWeight: FontWeight.w900),
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.21,
                                  height: MediaQuery.of(context).size.height * 0.06,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black,width: 1.5,),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'KAÇ KİŞİLİK',
                                        style: GoogleFonts.caveat( fontSize: personTitleFontSize, fontWeight: FontWeight.w900),
                                      ),
                                      Text(
                                        salatalar[currentSalataIndex].person,
                                        style: GoogleFonts.caveat( fontSize: personFontSize, fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.24,
                                  height: MediaQuery.of(context).size.height * 0.06, 
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black,width: 1.5,),
                                    
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'HAZIRLAMA SÜRESİ',
                                        style: GoogleFonts.caveat( fontSize: titlePreparationTime, fontWeight: FontWeight.w900),
                                      ),
                                      Text(
                                        salatalar[currentSalataIndex].preparationTime,
                                        style: GoogleFonts.caveat( fontSize: preparationTime, fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.21,
                                  height: MediaQuery.of(context).size.height * 0.06,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black,width: 1.5,),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'SOĞUTMA SÜRESİ',
                                        style: GoogleFonts.caveat( fontSize: titleCoolingTime, fontWeight: FontWeight.w900),
                                      ),
                                      Text(
                                        salatalar[currentSalataIndex].coolingTime,
                                        style: GoogleFonts.caveat( fontSize: coolingTime, fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.005,),
                        Column(
                          children: [
                            Text(
                              salatalar[currentSalataIndex].text,
                              style: GoogleFonts.caveat( fontSize: textFontSize, fontWeight: FontWeight.w800),

                            ),
                            ElevatedButton(
                              onPressed: navigateToRecipePage,
                              style: ElevatedButton.styleFrom(
                                primary: salatalar[currentSalataIndex]
                                    .recipeButtonColor,
                                onPrimary: Colors.white,
                                padding: EdgeInsets.symmetric(
                                    horizontal: MediaQuery.of(context).size.height * 0.03 ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 3,
                              ),
                              child: Text(
                                salatalar[currentSalataIndex].recipeTitle,
                                style: GoogleFonts.caveat( fontSize: recipeTitleFontSize, fontWeight: FontWeight.w500),
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

class SalataData {
  final Color color;
  final Color recipeButtonColor;
  final AssetImage image;
  final String title;
  final String text;
  final String recipeTitle;
  final String person;
  final String preparationTime;
  final String coolingTime;

  SalataData({
    required this.color,
    required this.recipeButtonColor,
    required this.image,
    required this.title,
    required this.text,
    required this.recipeTitle,
    required this.person,
    required this.preparationTime,
    required this.coolingTime,
  });
}
