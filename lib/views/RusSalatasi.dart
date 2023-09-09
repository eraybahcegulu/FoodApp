import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class RusSalatasi extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rus Salatası Tarifi', style: GoogleFonts.caveat( fontSize: 20, fontWeight: FontWeight.bold),),
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
              _buildStepText('1. Patatesleri ve havuçları soyun ve iri küpler halinde doğrayın.'),
              _buildStepText('2. Bir tencerede tuzlu suda patates ve havuçları yumuşayıncaya kadar haşlayın (yaklaşık 15-20 dakika). Daha sonra süzün ve soğumaya bırakın.'),
              _buildStepText('3. Haşlanmış yumurtaları soyun ve doğrayın.'),
              _buildStepText('4. Büyük bir kaseye haşlanmış patatesleri, havuçları, tavuk göğsü veya jambonu, haşlanmış yumurtaları, bezelyeyi ve konserve mısırı ekleyin (isteğe bağlı).'),
              _buildStepText('5. Ayrı bir kapta mayonez ve yoğurdu iyice karıştırın. Bu karışımı sebzelerin üzerine ekleyin.'),
              _buildStepText('6. Turşu ekleyin (isteğe bağlı) ve tuz ile karabiber ekleyerek tatlandırın.'),
              _buildStepText('7. Tüm malzemeleri dikkatlice karıştırın, salatanın tüm malzemelerin sosla kaplanmasını sağlayın.'),
              _buildStepText('8. Rus salatasını buzdolabında en az bir saat dinlendirin. Böylece lezzetler iyice karışır.'),
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
    home: RusSalatasi(),
  ));
}
