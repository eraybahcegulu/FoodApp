import 'package:flutter/material.dart';
import 'package:foodapp/views/AkdenizSalatasi.dart';
import 'package:foodapp/views/RusSalatasi.dart';
import 'package:foodapp/views/PatatesSalatasi.dart';
import 'package:foodapp/views/SezarSalatasi.dart';
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
      image: AssetImage('assets/images/salatalar/akdeniz.png'),
      title: 'AKDENİZ SALATASI',
      text:
          'Malzemeler:\n• 2 adet salatalık\n• 4 adet domates\n• 1 adet kırmızı soğan\n• 1/2 su bardağı siyah zeytin\n• 1/2 su bardağı yeşil zeytin\n• 200 gram taze beyaz peynir veya lor peyniri\n• 1/4 su bardağı doğranmış taze nane\n• 1/4 su bardağı doğranmış taze maydanoz\n• 1/4 su bardağı sızma zeytinyağı\n• 2 yemek kaşığı nar ekşisi veya limon suyu\n• Tuz\n• Karabiber',
      recipeTitle: 'Tarife Bak',
      person: '4',
      preparationTime: '20 dakika',
      cookingTime: 'yok',
    ),
    SalataData(
      color: const Color.fromARGB(255, 61, 204, 137),
      recipeButtonColor: Colors.red,
      image: AssetImage('assets/images/salatalar/patates.png'),
      title: 'PATATES SALATASI',
      text:
          'Malzemeler:\n• 4-5 adet haşlanmış orta boy patates\n• 3 adet haşlanmış yumurta\n• 1/2 su bardağı mayonez\n• 2 yemek kaşığı yoğurt\n• 1 yemek kaşığı hardal\n• 1/2 su bardağı turşu\n• 1/2 su bardağı haşlanmış bezelye\n• 1/4 su bardağı taze soğan\n• 1/4 su bardağı taze dereotu\n •Tuz\n •Karabiber ',
      recipeTitle: 'Tarife Bak',
      person: '4-6',
      preparationTime: '30 dakika',
      cookingTime: '25 dakika',
    ),
    SalataData(
      color: const Color.fromARGB(255, 178, 77, 196),
      recipeButtonColor: Color.fromARGB(255, 37, 187, 94),
      image: AssetImage('assets/images/salatalar/rus.png'),
      title: 'RUS SALATASI',
      text:
          'Malzemeler:\n• 4 adet orta boy patates\n• 2 adet havuç\n• 200 gram haşlanmış tavuk göğsü veya jambon\n• 4 adet haşlanmış yumurta\n• 1/2 su bardağı bezelye (isteğe bağlı)\n• 1/2 su bardağı konserve mısır (isteğe bağlı)\n• 3/4 su bardağı mayonez\n• 2 yemek kaşığı yoğurt\n• 3-4 adet turşu (isteğe bağlı, doğranmış)\n• Tuz\n• Karabiber  ',
      recipeTitle: 'Tarife Bak',
      person: '4-6',
      preparationTime: '30 dakika',
      cookingTime: '20 dakika',
    ),
    SalataData(
      color: Colors.blue,
      recipeButtonColor: Color.fromARGB(255, 180, 65, 12),
      image: AssetImage('assets/images/salatalar/sezar.png'),
      title: 'SEZAR SALATASI',
      text:
          'Malzemeler:\n• 2 adet kıvırcık marul\n• 2 dilim tavuk göğsü veya haşlanmış karides\n• 1/2 su bardağı kruton (ekmek kırıntısı)\n• 1/4 su bardağı rendelenmiş Parmesan peyniri\n• 2 yemek kaşığı zeytinyağı\n• 1 diş sarımsak (isteğe bağlı, ezilmiş)\n• 1 tatlı kaşığı Dijon hardalı\n• 1 yemek kaşığı limon suyu\n• 1 tatlı kaşığı Worcestershire sos\n• 1 adet yumurta sarısı\n• Tuz\n• Karabiber   ',
      recipeTitle: 'Tarife Bak',
      person: '2',
      preparationTime: '20 dakika',
      cookingTime: '20 dakika',
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


    double containerWidth;
if (MediaQuery.of(context).size.shortestSide < 600) {
  
  containerWidth = MediaQuery.of(context).size.width * 0.72;
} else {

  containerWidth = MediaQuery.of(context).size.width * 0.81;
}

    double textFontSize;
if (MediaQuery.of(context).size.shortestSide < 600) {
  
  textFontSize = 18.0;
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

    double titleCookingTime;
if (MediaQuery.of(context).size.shortestSide < 600) {
  
  titleCookingTime = 11.0;
} else {

  titleCookingTime = 22.0;
}

    double cookingTime;
if (MediaQuery.of(context).size.shortestSide < 600) {
  
  cookingTime = 15.0;
} else {

  cookingTime = 22.0;
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
                                        'PİŞİRME SÜRESİ',
                                        style: GoogleFonts.caveat( fontSize: titleCookingTime, fontWeight: FontWeight.w900),
                                      ),
                                      Text(
                                        salatalar[currentSalataIndex].cookingTime,
                                        style: GoogleFonts.caveat( fontSize: cookingTime, fontWeight: FontWeight.w600),
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
                            SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
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
  final String cookingTime;

  SalataData({
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
