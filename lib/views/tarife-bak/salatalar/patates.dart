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
        title: Text(
          'PATATES SALATASI TARİFİ',
          style: GoogleFonts.caveat(
              fontSize: appBarTitleFontSize, fontWeight: FontWeight.bold),
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
                  '1.Patatesleri yıkayın ve kabuklarını soyun. Eşit büyüklükte parçalara kesin.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '2. Patatesleri tuzlu suda kaynama noktasına gelinceye kadar haşlayın. Yaklaşık 10-15 dakika kaynatın, patateslerin çatalla kolayca delindiğinden emin olun. Haşlama süresi patateslerin büyüklüğüne bağlı olarak değişebilir.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '3. Haşlanmış patatesleri süzün ve soğumaları için bir kenara bırakın.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '4. Soğuyan patatesleri doğrayın ve büyük bir salata kabına alın.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '5. Haşlanmış ve doğranmış yumurtaları patateslerin üzerine ekleyin.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '6. Mayonezi, yoğurdu (varsa), hardalı (varsa), sirkeyi, tuzu ve karabiberi büyük bir kasede karıştırarak sosu hazırlayın.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '7. Sosu patates ve yumurtaların üzerine dökün ve tüm malzemeleri dikkatlice karıştırın.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '8. İsteğe bağlı olarak taze soğan, dereotu, maydanoz gibi yeşillikleri ekleyin ve karıştırın.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '9. Patates salatanızı buzdolabında en az 1 saat soğutun. Soğutma süresi, lezzetlerin bir araya gelmesine yardımcı olur.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '8. Servis öncesi üzerini taze yeşilliklerle veya dilimlenmiş zeytin ve turşularla süsleyebilirsiniz.',
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
    home: PatatesSalatasi(),
  ));
}
