import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MozaikPasta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double appBarTitleFontSize;
    if (MediaQuery.of(context).size.shortestSide < 600) {
      appBarTitleFontSize = 18.0;
    } else {
      appBarTitleFontSize = 30.0;
    }

    double textFontSize;
    if (MediaQuery.of(context).size.shortestSide < 600) {
      textFontSize = 20.0;
    } else {
      textFontSize = 35.0;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MOZAİK PASTA TARİFİ',
          style: GoogleFonts.caveat(
              fontSize: appBarTitleFontSize, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red,
        toolbarHeight: MediaQuery.of(context).size.height * 0.06,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Yapılış:',
                style: GoogleFonts.caveat(
                    fontSize: textFontSize, fontWeight: FontWeight.bold),
              ),
              _buildStepText(
                  "1. Bitter çikolatayı benmari usulü veya mikrodalga fırında eritin.",
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '2. Eritilen çikolataya tereyağını ekleyip karıştırın.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '3. Bir kaba toz şekeri alın, içine vanilin şekerini ekleyip karıştırın.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  "4. Yumurtaları ekleyip köpük köpük olana kadar çırpın.",
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '5. Karışıma eritilmiş çikolata ve tereyağını ekleyip karıştırın.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText('6. Kakao ekleyip karıştırın.', textFontSize),
              SizedBox(height: 15),
              _buildStepText('7. Bisküvileri ufalayın.', textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '8. Bisküvileri, çekilmiş ceviz içini ve sütü ekleyip karıştırın.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '9. Karışımı streç film serili bir kaba döküp düzeltin.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '10. Üzerini streç filmle kapatıp buzdolabında en az 4-5 saat bekletin.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '11. Mozaik pastanız donduktan sonra dilimleyip servis tabağına alın.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '12. Üzerine hindistancevizi veya rendelenmiş çikolata serpip servis yapabilirsiniz.',
                  textFontSize),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              _buildStepText('Notlar', textFontSize),
              _buildStepText(
                  '1) Bu tarif 8-10 kişilik bir mozaik pasta içindir.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '2) 4-5 saat soğutulması gerekmektedir.', textFontSize),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 248, 246, 143),
    );
  }

  Widget _buildStepText(
    String text,
    textFontSize,
  ) {
    return Text(
      text,
      style: GoogleFonts.caveat(
          fontSize: textFontSize, fontWeight: FontWeight.bold),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MozaikPasta(),
  ));
}
