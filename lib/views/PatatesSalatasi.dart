import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class PatatesSalatasi extends StatelessWidget {


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
        title: Text('PATATES SALATASI TARİFİ', style: GoogleFonts.caveat( fontSize: appBarTitleFontSize, fontWeight: FontWeight.bold),),
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
              _buildStepText('1. Patatesleri yıkayın ve kabuklarıyla birlikte büyük bir tencerede kaynar suyun içinde haşlayın. Patatesler yumuşayıncaya kadar yaklaşık 20-25 dakika pişirin.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('2. Haşlanmış patatesleri soğuk su altında hızlıca soymak daha kolay olacaktır. Patatesleri soyun ve küp küp doğrayın.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('3. Yumurtaları haşlayın, soğutun, kabuklarını soyun ve ince dilimler halinde doğrayın.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('4. Geniş bir kaseye haşlanmış ve doğranmış patatesleri, haşlanmış ve doğranmış yumurtaları, turşu, ve isteğe bağlı olarak haşlanmış bezelye ekleyin.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('5. Ayrı bir kapta mayonez, yoğurt ve hardalı iyice karıştırın. Bu sosu patates karışımına ekleyin.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('6. Taze soğan veya taze dereotunu da ekleyin.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('7. Tuz ve karabiber ekleyerek tatlandırın. Dikkatlice karıştırın, tüm malzemelerin sosla kaplanmasını sağlayın.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('8. Patates salatasını buzdolabında en az bir saat dinlendirin. Böylece lezzetler iyice karışır.',textFontSize),
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
    home: PatatesSalatasi(),
  ));
}
