import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SezarSalatasi extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sezar Salatası Tarifi', style: GoogleFonts.caveat( fontSize: 20, fontWeight: FontWeight.bold),),
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
              _buildStepText('1. Marulları yıkayın, kurulayın ve büyük bir salata kabına doğrayın.'),
              _buildStepText('2. Tavuk göğsünü veya karidesi haşlayın veya tavada pişirin. Tavuk göğsünü dilimleyin veya karidesi bütün bırakın. İsteğe bağlı olarak baharatlayabilirsiniz.'),
              _buildStepText('3. Krutonları yapmak için ekmek dilimlerini küp küp doğrayın ve tavada veya fırında altın rengi olana kadar kızartın.'),
              _buildStepText('4. Büyük bir kasede zeytinyağı, rendelenmiş Parmesan peyniri, ezilmiş sarımsak (isteğe bağlı), Dijon hardalı, limon suyu, Worcestershire sos ve yumurta sarısını bir araya getirin. İyice karıştırın.'),
              _buildStepText('5. Sosu marulların üzerine dökün ve tüm malzemeleri dikkatlice karıştırın, marulların iyice sosla kaplanmasını sağlayın.'),
              _buildStepText('6. Üzerine tavuk göğsü dilimleri veya karides ekleyin (isteğe bağlı).'),
              _buildStepText('7. Son olarak kızarmış krutonları ekleyin.'),
              _buildStepText('8. Tuz ve karabiberle tatlandırın ve servis yapın.'),
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
    home: SezarSalatasi(),
  ));
}
