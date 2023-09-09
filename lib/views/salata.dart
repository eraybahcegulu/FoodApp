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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Salatalar',
          style: GoogleFonts.caveat( fontSize: 18, fontWeight: FontWeight.bold),),
                    leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
           toolbarHeight: 40.0,
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
                  height: 599,
                  child: Center(
                    child: Column(
                      children: [
                        GestureDetector(
                          child: Image(
                            image: salatalar[currentSalataIndex].image,

                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              salatalar[currentSalataIndex].title,
                              style: GoogleFonts.caveat( fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 95,
                                  height:
                                      35,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'KAÇ KİŞİLİK',
                                        style: GoogleFonts.caveat( fontSize: 11, fontWeight: FontWeight.w900),
                                      ),
                                      Text(
                                        salatalar[currentSalataIndex].person,
                                        style: GoogleFonts.caveat( fontSize: 15, fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 95,
                                  height:
                                      35,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'HAZIRLAMA SÜRESİ',
                                        style: GoogleFonts.caveat( fontSize: 11, fontWeight: FontWeight.w900),
                                      ),
                                      Text(
                                        salatalar[currentSalataIndex].preparationTime,
                                        style: GoogleFonts.caveat( fontSize: 15, fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 95,
                                  height:
                                      35,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'PİŞİRME SÜRESİ',
                                        style: GoogleFonts.caveat( fontSize: 11, fontWeight: FontWeight.w900),
                                      ),
                                      Text(
                                        salatalar[currentSalataIndex].cookingTime,
                                        style: GoogleFonts.caveat( fontSize: 15, fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Column(
                          children: [
                            Text(
                              salatalar[currentSalataIndex].text,
                              style: GoogleFonts.caveat( fontSize: 18, fontWeight: FontWeight.w800),

                            ),
                            SizedBox(height: 0),
                            ElevatedButton(
                              onPressed: navigateToRecipePage,
                              style: ElevatedButton.styleFrom(
                                primary: salatalar[currentSalataIndex]
                                    .recipeButtonColor,
                                onPrimary: Colors.white,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20 ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 3,
                              ),
                              child: Text(
                                salatalar[currentSalataIndex].recipeTitle,
                                style: GoogleFonts.caveat( fontSize: 16, fontWeight: FontWeight.w500),
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
