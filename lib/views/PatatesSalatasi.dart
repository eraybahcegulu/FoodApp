import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class PatatesSalatasi extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patates Salatası Tarifi', style: GoogleFonts.caveat( fontSize: 20, fontWeight: FontWeight.bold),),
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
              _buildStepText('1. Patatesleri yıkayın ve kabuklarıyla birlikte büyük bir tencerede kaynar suyun içinde haşlayın. Patatesler yumuşayıncaya kadar yaklaşık 20-25 dakika pişirin.'),
              _buildStepText('2. Haşlanmış patatesleri soğuk su altında hızlıca soymak daha kolay olacaktır. Patatesleri soyun ve küp küp doğrayın.'),
              _buildStepText('3. Yumurtaları haşlayın, soğutun, kabuklarını soyun ve ince dilimler halinde doğrayın.'),
              _buildStepText('4. Geniş bir kaseye haşlanmış ve doğranmış patatesleri, haşlanmış ve doğranmış yumurtaları, turşu, ve isteğe bağlı olarak haşlanmış bezelye ekleyin.'),
              _buildStepText('5. Ayrı bir kapta mayonez, yoğurt ve hardalı iyice karıştırın. Bu sosu patates karışımına ekleyin.'),
              _buildStepText('6. Taze soğan veya taze dereotunu da ekleyin.'),
              _buildStepText('7. Tuz ve karabiber ekleyerek tatlandırın. Dikkatlice karıştırın, tüm malzemelerin sosla kaplanmasını sağlayın.'),
              _buildStepText('8. Patates salatasını buzdolabında en az bir saat dinlendirin. Böylece lezzetler iyice karışır.'),
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
    home: PatatesSalatasi(),
  ));
}
