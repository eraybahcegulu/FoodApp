import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SezarSalatasi extends StatelessWidget {
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
          'SEZAR SALATASI TARİFİ',
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
                  '1. Tavuk göğüslerini tuz ve karabiberle baharatlayın.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '2. Geniş bir tavada zeytinyağını ısıtın ve tavukları her iki tarafı da altın kahverengi olana kadar yaklaşık 4-5 dakika pişirin. Tavukları çıkarın ve dinlenmeye bırakın.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '3. Tavuk dinlenirken, marul yapraklarını yıkayın, kurulayın ve büyük bir salata kabına yerleştirin.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '4. Eğer isterseniz çıtır ekmek kırıntıları veya krutonları ekleyin.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '5. Sos için, mayonezi, rendelenmiş parmesanı, limon suyunu, dijon hardalını, Worcestershire sosunu ve isteğe bağlı rendelenmiş sarımsağı karıştırın. Tuz ve karabiberle tatlandırın.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '6. Tavukları dilimleyin ve marulun üzerine yerleştirin.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '7. Sosu salatanın üzerine dökün ve hafifçe karıştırın.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText('8. Üzerine rendelenmiş parmesan peyniri serpin.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '9. Sezar salatanız hazır. İsteğe bağlı olarak daha fazla parmesan peyniri ekleyebilirsiniz.',
                  textFontSize),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              _buildStepText('Notlar', textFontSize),
              _buildStepText(
                  '1) Bu tarif genellikle 2-4 kişilik bir ana yemek için uygundur. Daha büyük bir grup için malzemeleri artırabilirsiniz.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '2) Hazırlama süresi yaklaşık 30 dakika.', textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '3) Krutonlar, Sezar salatasının geleneksel bir parçasıdır, ancak isteğe bağlı olarak kullanabilirsiniz.',
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
    home: SezarSalatasi(),
  ));
}
