import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class RusSalatasi extends StatelessWidget {


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
        title: Text('RUS SALATASI TARİFİ', style: GoogleFonts.caveat( fontSize: appBarTitleFontSize, fontWeight: FontWeight.bold,),),
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
              _buildStepText('1. Patatesleri ve havuçları soyun ve iri küpler halinde doğrayın.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('2. Bir tencerede tuzlu suda patates ve havuçları yumuşayıncaya kadar haşlayın (yaklaşık 15-20 dakika). Daha sonra süzün ve soğumaya bırakın.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('3. Haşlanmış yumurtaları soyun ve doğrayın.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('4. Büyük bir kaseye haşlanmış patatesleri, havuçları, tavuk göğsü veya jambonu, haşlanmış yumurtaları, bezelyeyi ve konserve mısırı ekleyin (isteğe bağlı).',textFontSize),
              SizedBox(height: 15),
              _buildStepText('5. Ayrı bir kapta mayonez ve yoğurdu iyice karıştırın. Bu karışımı sebzelerin üzerine ekleyin.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('6. Turşu ekleyin (isteğe bağlı) ve tuz ile karabiber ekleyerek tatlandırın.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('7. Tüm malzemeleri dikkatlice karıştırın, salatanın tüm malzemelerin sosla kaplanmasını sağlayın.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('8. Rus salatasını buzdolabında en az bir saat dinlendirin. Böylece lezzetler iyice karışır.',textFontSize),
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
    home: RusSalatasi(),
  ));
}
