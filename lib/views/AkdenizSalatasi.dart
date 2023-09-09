import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AkdenizSalatasi extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Akdeniz Salatası Tarifi', style: GoogleFonts.caveat( fontSize: 20, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.green,
        toolbarHeight: 40.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Yapılış:',
                style: GoogleFonts.caveat( fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              _buildStepText('1. Yeşillikleri güzelce yıkayıp sirkeli suda bekletin. Sonrasında güzelce kurutun ve elinizle kopararak kaseye ekleyin. Domatesleri ortadan ikiye bölün.'),
              _buildStepText('2. Doğradığınız sebzeleri büyük bir kaseye alın.'),
              _buildStepText('3. Üzerine siyah ve yeşil zeytinleri ekleyin.'),
              _buildStepText('4. Beyaz peyniri küçük küpler halinde kesip ekleyin.'),
              _buildStepText('5. Zeytinyağı, limon suyu, tuz ve karabiberi ayrı bir kapta karıştırın ve salatanın üzerine dökün.'),
              _buildStepText('6. Salatayı karıştırarak servis tabağına alın.'),
              _buildStepText('7. Üzerine taze kekik veya fesleğen yaprakları ile süsleyin.'),
              _buildStepText('8. Akdeniz Salatası hazır, afiyet olsun!'),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.yellow,
    );
  }

  Widget _buildStepText(String text) {
    return Text(text, style: GoogleFonts.caveat( fontSize: 20, fontWeight: FontWeight.bold),);
  }
}

void main() {
  runApp(MaterialApp(
    home: AkdenizSalatasi(),
  ));
}
