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
        title: Text(
          'RUS SALATASI TARİFİ',
          style: GoogleFonts.caveat(
            fontSize: appBarTitleFontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
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
                style: GoogleFonts.caveat(
                    fontSize: textFontSize, fontWeight: FontWeight.bold),
              ),
              _buildStepText(
                  '1. Haşlanmış patatesleri, havuçları ve yumurtaları soğuyana kadar bekletin.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '2. Soğuyan patatesleri, havuçları ve yumurtaları küçük küpler halinde kesin.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '3. Haşlanmış yeşil bezelyeyi süzün.', textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '4. Haşlanmış mısırları da ekleyin.', textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '5. Büyük bir salata kabında doğranmış patates, havuç, yumurta, yeşil bezelye, döner parçaları ve mısırları karıştırın.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '6. Ayrı bir kapta mayonezi, yoğurdu (varsa), hardalı (varsa), tuzu ve karabiberi karıştırarak sosu hazırlayın.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '7. Sosu sebzelerin üzerine ekleyin ve tüm malzemeleri dikkatlice karıştırın.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '8. İsteğe bağlı olarak doğranmış taze soğanı ekleyin ve karıştırın.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '9. Salatanızı buzdolabında en az 1 saat soğutun. Soğutma süresi, lezzetlerin bir araya gelmesine yardımcı olur.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '10. Servis öncesi üzerini taze dereotu veya maydanoz yapraklarıyla süsleyebilirsiniz.',
                  textFontSize),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              _buildStepText('Notlar', textFontSize),
              _buildStepText(
                  '1) Bu tarif genellikle 4-6 kişilik bir salata için uygundur, ancak malzemeleri artırarak veya azaltarak kişi sayısına göre ayarlayabilirsiniz.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '2) Hazırlama süresi yaklaşık 30 dakika. Soğutma süresi ise en az 1 saat olmalıdır.',
                  textFontSize),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 248, 246, 143),
    );
  }

  Widget _buildStepText(String text, textFontSize) {
    return Text(
      text,
      style: GoogleFonts.caveat(
          fontSize: textFontSize, fontWeight: FontWeight.bold),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: RusSalatasi(),
  ));
}
