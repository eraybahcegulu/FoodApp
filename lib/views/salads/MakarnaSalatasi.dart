import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MakarnaSalatasi extends StatelessWidget {


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
        title: Text('MAKARNA SALATASI TARİFİ', style: GoogleFonts.caveat( fontSize: appBarTitleFontSize, fontWeight: FontWeight.bold),),
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
              _buildStepText('1. Makarnayı paketin üzerindeki talimatlara göre tuzlu kaynar suda haşlayın. Makarnaları al dente (hafif diri) pişirin.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('2. Haşlanmış makarnayı süzün ve soğumaları için bir kenara bırakın.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('3. Bir büyük salata kabında, haşlanmış makarnayı, haşlanmış mısırları, doğranmış salatalığı, domatesi, yeşil biberi ve mor soğanı (varsa) karıştırın.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('4. Ayrı bir kapta sosu hazırlamak için, mayonezi, yoğurdu (varsa), zeytinyağını, beyaz sirkeyi veya limon suyunu ve sarımsağı karıştırın. Tuz ve karabiberle tatlandırın.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('5. Hazırladığınız sosu makarna karışımına ekleyin ve tüm malzemeleri iyice karıştırın.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('6. İsteğe bağlı olarak doğranmış taze maydanozu veya dereotunu ekleyin.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('7. Makarna salatasını buzdolabında en az bir saat boyunca soğutun.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('7. Soğutulmuş makarna salatasını servis tabağına alın ve isteğe bağlı olarak üzerini yeşilliklerle veya ekstra sebzelerle süsleyin.',textFontSize),
              SizedBox(height: 50),
              _buildStepText('Notlar',textFontSize),
              _buildStepText('1) Bu tarif genellikle 4-6 kişilik bir salata için uygundur, ancak malzemeleri artırarak veya azaltarak kişi sayısına göre ayarlayabilirsiniz.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('2) Hazırlama süresi yaklaşık 20 dakika. Soğutma süresi en az 1 saat olmalıdır.',textFontSize),
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
    home: MakarnaSalatasi(),
  ));
}
