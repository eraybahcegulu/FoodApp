import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SezarSalatasi extends StatelessWidget {


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
        title: Text('SEZAR SALATASI TARİFİ', style: GoogleFonts.caveat( fontSize: appBarTitleFontSize, fontWeight: FontWeight.bold),),
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
              _buildStepText('1. Marulları yıkayın, kurulayın ve büyük bir salata kabına doğrayın.', textFontSize),
              SizedBox(height: 15),
              _buildStepText('2. Tavuk göğsünü veya karidesi haşlayın veya tavada pişirin. Tavuk göğsünü dilimleyin veya karidesi bütün bırakın. İsteğe bağlı olarak baharatlayabilirsiniz.' , textFontSize),
              SizedBox(height: 15),
              _buildStepText('3. Krutonları yapmak için ekmek dilimlerini küp küp doğrayın ve tavada veya fırında altın rengi olana kadar kızartın.', textFontSize),
              SizedBox(height: 15),
              _buildStepText('4. Büyük bir kasede zeytinyağı, rendelenmiş Parmesan peyniri, ezilmiş sarımsak (isteğe bağlı), Dijon hardalı, limon suyu, Worcestershire sos ve yumurta sarısını bir araya getirin. İyice karıştırın.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('5. Sosu marulların üzerine dökün ve tüm malzemeleri dikkatlice karıştırın, marulların iyice sosla kaplanmasını sağlayın.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('6. Üzerine tavuk göğsü dilimleri veya karides ekleyin (isteğe bağlı).',textFontSize ),
              SizedBox(height: 15),
              _buildStepText('7. Son olarak kızarmış krutonları ekleyin.', textFontSize),
              SizedBox(height: 15),
              _buildStepText('8. Tuz ve karabiberle tatlandırın ve servis yapın.',textFontSize ),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 248, 246, 143),
    );
  }

  Widget _buildStepText(String text, textFontSize) {
    return Text(text, style: GoogleFonts.caveat( fontSize: textFontSize, fontWeight: FontWeight.bold),);
  }
}

void main() {
  runApp(MaterialApp(
    home: SezarSalatasi(),
  ));
}
