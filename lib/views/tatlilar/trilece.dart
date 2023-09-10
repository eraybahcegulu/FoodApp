import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Trilece extends StatelessWidget {


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
        title: Text('TRİLEÇE TARİFİ', style: GoogleFonts.caveat( fontSize: appBarTitleFontSize, fontWeight: FontWeight.bold),),
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
              _buildStepText("1. Kek için, yumurtaları derin bir karıştırma kabına kırın. Toz şekeri ekleyin ve beyazlayana kadar iyice çırpın.",textFontSize),
              SizedBox(height: 15),
              _buildStepText('2. Üzerine un, kabartma tozu ve vanilya özütünü ekleyin. Karışımı yavaşça karıştırın, pürüzsüz bir hamur elde edene kadar karıştırın.',textFontSize),
              SizedBox(height: 15),
              _buildStepText("3. Hazırladığınız hamuru yağlı kağıt serili bir fırın tepsisine dökün ve düzleştirin. Önceden ısıtılmış 180°C fırında üzeri hafifçe kızarana kadar pişirin (yaklaşık 20-25 dakika).",textFontSize),
              SizedBox(height: 15),
              _buildStepText("4. Fırından çıkan keki soğumaya bırakın.",textFontSize),
              SizedBox(height: 15),
              _buildStepText('5. Süt şerbeti için, bir tencereye su, süt ve toz şekeri ekleyin. Karışımı kaynamaya getirin ve şeker eriyene kadar karıştırın. Kaynadıktan sonra 5 dakika kadar kaynamaya devam edin.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('6. Soğuyan kekin üzerine süt şerbetini dökün. Şerbeti iyice emmesi için birkaç saat veya en iyi sonucu almak için bir gece buzdolabında bekletin.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('7. Krema için, bir tencerede süt, nişasta, toz şeker ve tereyağını karıştırın. Karışımı kısık ateşte sürekli karıştırarak kaynamaya getirin ve koyulaşana kadar pişirin. Vanilya özütünü ekleyin ve karıştırın.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('8. Koyulaşan kremayı ocaktan alın ve soğumaya bırakın.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('9. Soğuyan kremayı trileçe üzerine yayın ve üzerini düzeltin.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('10. Trileçeyi en az 2-3 saat buzdolabında soğutun.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('11. Soğuyan trileçeyi dilimleyin ve üzerini isteğe bağlı olarak hindistancevizi rendesi veya çikolata taneleri ile süsleyin.',textFontSize),
              SizedBox(height: 50),
              _buildStepText('Notlar',textFontSize),
              _buildStepText('1) Bu tarif genellikle 8-10 kişilik bir tatlı elde etmenizi sağlar.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('2) Hazırlık işlemleri yaklaşık 30-40 dakika sürer.',textFontSize),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 248, 246, 143),
    );
  }

  Widget _buildStepText(String text,textFontSize,) {
    return Text(text, style: GoogleFonts.caveat( fontSize: textFontSize, fontWeight: FontWeight.bold),);
  }
}

void main() {
  runApp(MaterialApp(
    home: Trilece(),
  ));
}
