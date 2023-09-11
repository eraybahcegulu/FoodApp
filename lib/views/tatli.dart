import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:foodapp/views/tatlilar/kibris.dart';
import 'package:foodapp/views/tatlilar/sutlac.dart';
import 'package:foodapp/views/tatlilar/trilece.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(Tatli());
}

class Tatli extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    double appBarTitleFontSize;
if (MediaQuery.of(context).size.shortestSide < 400) {
  
  appBarTitleFontSize = 15;
} 
else if (MediaQuery.of(context).size.shortestSide < 600) {
  
  appBarTitleFontSize = 18;
} 

else {

  appBarTitleFontSize = 30;
}
    return MaterialApp(
      
      home: Scaffold(
        appBar: AppBar(
          title: Text('TATLILAR',
          
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
  List<TatliData> tatlilar = [
    TatliData(
      color: Color.fromARGB(255, 230, 179, 84),
      recipeButtonColor: Color.fromARGB(255, 167, 74, 86),
      image: AssetImage('assets/images/tatlilar/sutlac.png'),
      title: 'SÜTLAÇ',
      text:
          'Malzemeler:\n• 1/2 su bardağı sütlaç pirinci\n• 1 litre tam yağlı süt\n• 1 su bardağı toz şeker (isteğe bağlı olarak şeker miktarını artırabilir veya azaltabilirsiniz)\n• 2 yemek kaşığı pirinç unu (veya buğday nişastası)\n• 1 vanilya çubuğu veya 1 tatlı kaşığı vanilya özütü\n• Yarım su bardağı su\n• Taze çekilmiş tarçın veya toz tarçın (süslemek için)',
      recipeTitle: 'Tarife Bak',
      person: '4-6',
      preparationTime: '30-40 dakika',
      coolingTime: '2-3 saat',
    ),
    TatliData(
      color: Color.fromRGBO(15, 106, 243, 1),
      recipeButtonColor: Color.fromARGB(255, 230, 207, 135),
      image: AssetImage('assets/images/tatlilar/trilece.png'),
      title: 'TRİLEÇE',
      text:
          'Malzemeler:\n• Keki İçin:\n• 3 yumurta\n• 1 su bardağı toz şeker\n• 1 su bardağı un\n• 1 tatlı kaşığı kabartma tozu\n• 1 tatlı kaşığı vanilya özütü\n• Süt Şerbeti İçin:\n• 2 su bardağı süt\n• 1 su bardağı toz şeker\n• 1 su bardağı su\n• Krema İçin:\n• 2 su bardağı süt\n• 2 yemek kaşığı nişasta\n• 1/2 su bardağı toz şeker\n• 2 yemek kaşığı tereyağı\n• 1 tatlı kaşığı vanilya özütü',
      recipeTitle: 'Tarife Bak',
      person: '8',
      preparationTime: '40 dakika',
      coolingTime: '2-3 saat',
    ),

        TatliData(
      color: Color.fromARGB(255, 5, 121, 92),
      recipeButtonColor: Color.fromARGB(255, 185, 149, 206),
      image: AssetImage('assets/images/tatlilar/kibris.png'),
      title: 'KIBRIS TATLISI',
      text:
          'Malzemeler:\n• 1 su bardağı galeta unu\n• 1/2 su bardağı toz şeker\n• 1 paket kabartma tozu\n• 3 adet yumurta\n• 1/2 su bardağı sıvı yağ\n• 2 su bardağı Hindistan cevizi\n• 1 su bardağı ceviz içi (ince çekilmiş)\n• Kreması için:\n• 1 su bardağı mısır nişastası\n• 1 litre süt\n• 1 paket toz krem şanti\n• 1 çay bardağı toz şeker\n• 1 paket vanilin\n• Şerbeti için:\n• 1 su bardağı toz şeker\n• 1,5 su bardağı su\n• 2 damla taze sıkılmış limon suyu',
      recipeTitle: 'Tarife Bak',
      person: '6',
      preparationTime: '40 dakika',
      coolingTime: '2-3 saat',
    ),
  ];

  int currentIndex = 0;

  void changeContainerLeft() {
    setState(() {
      currentIndex = (currentIndex - 1) % tatlilar.length;
    });
  }

  void changeContainerRight() {
    setState(() {
      currentIndex = (currentIndex + 1) % tatlilar.length;
    });
  }

  
  void navigateToRecipePage() {
    if (currentIndex == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Sutlac()),
      );
    } else if (currentIndex == 1 || currentIndex == -2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Trilece()),
      );
    } else if (currentIndex == 2 || currentIndex == -1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Kibris()),
      );
    } 
    
  }

  

  @override
  Widget build(BuildContext context) {

       double containerHeight;
if (MediaQuery.of(context).size.shortestSide < 400) {
  
  containerHeight = MediaQuery.of(context).size.height * 0.86;
} 

else if (MediaQuery.of(context).size.shortestSide < 600) {
  
  containerHeight = MediaQuery.of(context).size.height * 0.87;
} 
else {

  containerHeight = MediaQuery.of(context).size.height * 0.88;
}


    double containerWidth;
if (MediaQuery.of(context).size.shortestSide < 400) {
  
  containerWidth = MediaQuery.of(context).size.width * 0.66;
} 

else if (MediaQuery.of(context).size.shortestSide < 600) {
  
  containerWidth = MediaQuery.of(context).size.width * 0.72;
} 
else {

  containerWidth = MediaQuery.of(context).size.width * 0.81;
}

    double textFontSize;
if (MediaQuery.of(context).size.shortestSide < 400) {
  
  textFontSize = 10.0;
} 

else if (MediaQuery.of(context).size.shortestSide < 600) {
  
  textFontSize = 14.0;
} else {

  textFontSize = 16.0;
}

    double titleFontSize;
if (MediaQuery.of(context).size.shortestSide < 400) {
  
  titleFontSize = 15.0;
} 
else if (MediaQuery.of(context).size.shortestSide < 600) {
  
  titleFontSize = 18.0;
} 
else {

  titleFontSize = 30.0;
}

    double recipeTitleFontSize;
if (MediaQuery.of(context).size.shortestSide < 400) {
  
  recipeTitleFontSize = 15.0;
} 
else if (MediaQuery.of(context).size.shortestSide < 600) {
  
  recipeTitleFontSize = 16.0;
}
else {

  recipeTitleFontSize = 20.0;
}

    double personTitleFontSize;
if (MediaQuery.of(context).size.shortestSide < 400) {
  
  personTitleFontSize = 9.0;
} 
else if (MediaQuery.of(context).size.shortestSide < 600) {
  
  personTitleFontSize = 11.0;
}
else {

  personTitleFontSize = 20.0;
}

    double personFontSize;
if (MediaQuery.of(context).size.shortestSide < 400) {
  
  personFontSize = 12.0;
}
else if (MediaQuery.of(context).size.shortestSide < 600) {
  
  personFontSize = 15.0;
} 
 else {

  personFontSize = 20.0;
}

    double titlePreparationTime;
if (MediaQuery.of(context).size.shortestSide < 400) {
  
  titlePreparationTime = 9.0;
}
else if (MediaQuery.of(context).size.shortestSide < 600) {
  
  titlePreparationTime = 11.0;
}
 else {

  titlePreparationTime = 20.0;
}

    double preparationTime;
if (MediaQuery.of(context).size.shortestSide < 400) {
  
  preparationTime = 12.0;
}
else if (MediaQuery.of(context).size.shortestSide < 600) {
  
  preparationTime = 15.0;
}
 else {

  preparationTime = 20.0;
}

    double titleCoolingTime;
if (MediaQuery.of(context).size.shortestSide < 400) {
  
  titleCoolingTime= 9.0;
}
else if (MediaQuery.of(context).size.shortestSide < 600) {
  
  titleCoolingTime= 11.0;
} 
 else {

  titleCoolingTime = 20.0;
}

    double coolingTime;
if (MediaQuery.of(context).size.shortestSide < 400) {
  
  coolingTime = 11.0;
} 

else if (MediaQuery.of(context).size.shortestSide < 600) {
  
  coolingTime = 15.0;
} else {

  coolingTime = 20.0;
}

    double iconSize;
if (MediaQuery.of(context).size.shortestSide < 400) {
  
  iconSize = 25.0;
} 
else if (MediaQuery.of(context).size.shortestSide < 600) {
  
  iconSize = 30.0;
}
else {

  iconSize = 50.0;
}
    return Scaffold(
      backgroundColor: tatlilar[currentIndex].color,
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
                
                
                SingleChildScrollView(
  child:Container(
                  
                  color: tatlilar[currentIndex].color,
                  width: containerWidth,
                  height: containerHeight,
                  child: Center(
                    child: Column(
                      children: [
                        GestureDetector(
                          child: Image(
                            image: tatlilar[currentIndex].image,
                              width: MediaQuery.of(context).size.width * 0.6,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              tatlilar[currentIndex].title,
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
                                        tatlilar[currentIndex].person,
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
                                        tatlilar[currentIndex].preparationTime,
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
                                        tatlilar[currentIndex].coolingTime,
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
                              tatlilar[currentIndex].text,
                              style: GoogleFonts.cormorantInfant( fontSize: textFontSize, fontWeight: FontWeight.w900),

                            ),
                            ElevatedButton(
                              onPressed: navigateToRecipePage,
                              style: ElevatedButton.styleFrom(
                                primary: tatlilar[currentIndex]
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
                                tatlilar[currentIndex].recipeTitle,
                                style: GoogleFonts.caveat( fontSize: recipeTitleFontSize, fontWeight: FontWeight.w500),
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

class TatliData {
  final Color color;
  final Color recipeButtonColor;
  final AssetImage image;
  final String title;
  final String text;
  final String recipeTitle;
  final String person;
  final String preparationTime;
  final String coolingTime;

  TatliData({
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
