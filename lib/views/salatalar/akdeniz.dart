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
              _buildStepText('1. Domatesleri ve salatalığı ince dilimler halinde doğrayın.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('2. Yeşil ve kırmızı biberleri ince şeritler halinde kesin.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('3. Soğanı ince dilimler halinde doğrayın veya halka halka doğrayın.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('4. Zeytinleri çekirdekleri çıkarılmış olarak kullanın.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('5. Peyniri küp şeklinde kesin veya ufalayın.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('6. Taze roka veya nane yaprakları eklemek isterseniz, bunları da hazırlayın.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('7. Büyük bir salata kasesine doğradığınız tüm malzemeleri ekleyin.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('8. Ayrı bir kapta zeytinyağı, limon suyu ve isteğe bağlı olarak rendelenmiş sarımsağı karıştırarak sosu hazırlayın.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('9. Hazırladığınız sosu salatanın üzerine dökün.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('10. Tuz ve karabiberi ekleyin ve tüm malzemeleri nazikçe karıştırarak sosla buluşturun.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('11. Salatanızı buzdolabında en az yarım saat soğutun.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('12. Servis öncesi taze roka veya nane yapraklarıyla süsleyebilirsiniz.',textFontSize),
              SizedBox(height: 50),
              _buildStepText('Notlar',textFontSize),
              _buildStepText('1) Bu tarif genellikle 4 kişilik bir salata için uygundur, ancak malzemeleri artırarak veya azaltarak kişi sayısına göre ayarlayabilirsiniz.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('2) Hazırlama süresi yaklaşık 20 dakika, pişirme süresi yoktur çünkü Akdeniz salatası bir çiğ salata tarifidir.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('3) Akdeniz salatası hafif, lezzetli ve sağlıklı bir seçenektir. İsteğe bağlı olarak zeytinyağı ve limon suyu miktarını damak zevkinize göre ayarlayabilirsiniz.',textFontSize),
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
