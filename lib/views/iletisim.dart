import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class Iletisim extends StatelessWidget {
  final TextEditingController adController = TextEditingController();
  final TextEditingController soyadController = TextEditingController();
  final TextEditingController mesajController = TextEditingController();
  final DatabaseReference _database = FirebaseDatabase.instance.reference();

  @override
  Widget build(BuildContext context) {
    double appBarTitleFontSize;
    if (MediaQuery.of(context).size.shortestSide < 400) {
      appBarTitleFontSize = 15.0;
    } 
    else if (MediaQuery.of(context).size.shortestSide < 600) {
      appBarTitleFontSize = 18;
    }
    
    else {
      appBarTitleFontSize = 30.0;
    }

    double textFontSize;
    if (MediaQuery.of(context).size.shortestSide < 400) {
      textFontSize = 14.0;
    } 
    else if (MediaQuery.of(context).size.shortestSide < 600) {
      textFontSize = 18.0;
    } 
    
    else {
      textFontSize = 30.0;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'İSTEDİĞİNİ EKLE',
          style: GoogleFonts.caveat(
            fontSize: appBarTitleFontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.red,
        toolbarHeight: MediaQuery.of(context).size.height * 0.06,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: TextFormField(
                      controller: adController,
                      maxLength: 15,
                      style: GoogleFonts.cormorantInfant(
                          fontSize: textFontSize, fontWeight: FontWeight.w700),
                      decoration: InputDecoration(
                        labelText: 'Ad',
                        labelStyle: GoogleFonts.cormorantInfant(
                            fontSize: textFontSize,
                            fontWeight: FontWeight.w700),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.fromLTRB(
                          MediaQuery.of(context).size.width * 0.01,
                          MediaQuery.of(context).size.height * 0.01,
                          MediaQuery.of(context).size.width * 0.01,
                          MediaQuery.of(context).size.height * 0.01,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.height * 0.02,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: TextFormField(
                      controller: soyadController,
                      maxLength: 15,
                      style: GoogleFonts.cormorantInfant(
                          fontSize: textFontSize, fontWeight: FontWeight.w700),
                      decoration: InputDecoration(
                        labelText: 'Soyad',
                        labelStyle: GoogleFonts.cormorantInfant(
                            fontSize: textFontSize,
                            fontWeight: FontWeight.w700),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.fromLTRB(
                          MediaQuery.of(context).size.width * 0.01,
                          MediaQuery.of(context).size.height * 0.01,
                          MediaQuery.of(context).size.width * 0.01,
                          MediaQuery.of(context).size.height * 0.01,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.030,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextFormField(
                controller: mesajController,
                maxLength: 100,
                style: GoogleFonts.cormorantInfant(
                    fontSize: textFontSize, fontWeight: FontWeight.w700),
                decoration: InputDecoration(
                  labelText: 'Eklenmesini istediğiniz yemek, tatlı vb. ismi',
                  labelStyle: GoogleFonts.cormorantInfant(
                      fontSize: textFontSize, fontWeight: FontWeight.w700),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.fromLTRB(
                    MediaQuery.of(context).size.width * 0.01,
                    MediaQuery.of(context).size.height * 0.01,
                    MediaQuery.of(context).size.width * 0.01,
                    MediaQuery.of(context).size.height * 0.01,
                  ),
                ),
                maxLines: 4,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            ElevatedButton(
              onPressed: () {
                if (adController.text.length >= 2 &&
                    soyadController.text.length >= 2 &&
                    mesajController.text.length >= 2) {
                  sendDataToFirebase(adController.text, soyadController.text,
                      mesajController.text);

                  adController.clear();
                  soyadController.clear();
                  mesajController.clear();

                  final snackBar = SnackBar(
                    content: Text('Mesajınız gönderildi.'),
                    duration: Duration(seconds: 2),
                    backgroundColor: Colors.green,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                } else {
                  final snackBar = SnackBar(
                    content: Text(
                        'Lütfen tüm alanları en az 2 karakter olarak doldurun.'),
                    duration: Duration(seconds: 2),
                    backgroundColor: Colors.red,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width * 0.01,
                  MediaQuery.of(context).size.height * 0.01,
                  MediaQuery.of(context).size.width * 0.01,
                  MediaQuery.of(context).size.height * 0.01,
                ),
                child: Text(
                  'Gönder',
                  style: GoogleFonts.cormorantInfant(
                    fontSize: textFontSize,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 248, 246, 143),
    );
  }

  void sendDataToFirebase(String ad, String soyad, String mesaj) {
    final DateTime now = DateTime.now();
    final String tarih =
        "${now.day.toString().padLeft(2, '0')}-${now.month.toString().padLeft(2, '0')}-${now.year} ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}";
    _database.child('iletisim').push().set({
      'ad': ad,
      'soyad': soyad,
      'mesaj': mesaj,
      'tarih': tarih,
    });
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: Iletisim(),
  ));
}
