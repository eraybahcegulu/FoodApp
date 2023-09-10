import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class KerevizSalatasi extends StatelessWidget {


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
        title: Text('KEREVİZ SALATASI TARİFİ', style: GoogleFonts.caveat( fontSize: appBarTitleFontSize, fontWeight: FontWeight.bold),),
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
              _buildStepText('1. Kerevizleri soyun ve iri doğrayın.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('2. Dilimlenmiş kerevizleri bir kaseye alın.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('3. Ayrı bir kapta mayonezi, yoğurdu (varsa), limon suyunu, tuzu ve karabiberi karıştırarak sosu hazırlayın. Sosun kıvamını ayarlamak için gerekirse biraz daha mayonez veya yoğurt ekleyebilirsiniz.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('4. Hazırladığınız sosu dilimlenmiş kerevizlerin üzerine dökün ve tüm malzemeleri iyice karıştırın.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('5. İsteğe bağlı olarak iri doğranmış ceviz içini ekleyin ve tekrar karıştırın.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('6. Kereviz salatasını buzdolabında en az 30 dakika soğutun. Soğutma süresi, lezzetlerin bir araya gelmesine yardımcı olur.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('7. Servis öncesi üzerini taze dereotu veya maydanoz yapraklarıyla süsleyebilirsiniz.',textFontSize),
              SizedBox(height: 50),
              _buildStepText('Notlar',textFontSize),
              _buildStepText('1) Bu tarif genellikle 4-6 kişilik bir salata için uygundur, ancak malzemeleri artırarak veya azaltarak kişi sayısına göre ayarlayabilirsiniz.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('2) Hazırlama süresi yaklaşık 15 dakika, pişirme süresi yoktur çünkü kereviz salatası bir çiğ salata tarifidir.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('3) Ceviz içi, bu tarife ekstra bir lezzet ve dokuluk katar, ancak isteğe bağlıdır.',textFontSize),
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
    home: KerevizSalatasi(),
  ));
}
