import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AkdenizSalatasi extends StatelessWidget {


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
        title: Text('AKDENİZ SALATASI TARİFİ', style: GoogleFonts.caveat( fontSize: appBarTitleFontSize, fontWeight: FontWeight.bold),),
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
                style: GoogleFonts.caveat( fontSize: textFontSize, fontWeight: FontWeight.bold),
              ),
              _buildStepText('1. Yeşillikleri güzelce yıkayıp sirkeli suda bekletin. Sonrasında güzelce kurutun ve elinizle kopararak kaseye ekleyin. Domatesleri ortadan ikiye bölün.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('2. Doğradığınız sebzeleri büyük bir kaseye alın.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('3. Üzerine siyah ve yeşil zeytinleri ekleyin.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('4. Beyaz peyniri küçük küpler halinde kesip ekleyin.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('5. Zeytinyağı, limon suyu, tuz ve karabiberi ayrı bir kapta karıştırın ve salatanın üzerine dökün.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('6. Salatayı karıştırarak servis tabağına alın.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('7. Üzerine taze kekik veya fesleğen yaprakları ile süsleyin.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('8. Akdeniz Salatası hazır, afiyet olsun!',textFontSize),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 248, 246, 143),
    );
  }

  Widget _buildStepText(String text,textFontSize) {
    return Text(text, style: GoogleFonts.caveat( fontSize: textFontSize, fontWeight: FontWeight.bold),);
  }
}

void main() {
  runApp(MaterialApp(
    home: AkdenizSalatasi(),
  ));
}
