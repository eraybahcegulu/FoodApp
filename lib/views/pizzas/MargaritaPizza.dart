import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MargaritaPizza extends StatelessWidget {


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
        title: Text('MARGARİTA PİZZA TARİFİ', style: GoogleFonts.caveat( fontSize: appBarTitleFontSize, fontWeight: FontWeight.bold),),
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
              _buildStepText("1. Hamur için, mayayı ılık suyla bir kasede karıştırın ve mayanın köpürmesini bekleyin (yaklaşık 5 dakika).",textFontSize),
              SizedBox(height: 15),
              _buildStepText("2. Unu, sıvı yağı ve tuzu ekleyin ve yumuşak bir hamur oluşturana kadar iyice karıştırın. Hamurunuzu unlanmış bir tezgah üzerinde yoğurun.",textFontSize),
              SizedBox(height: 15),
              _buildStepText('3. Hamurunuzu bir kapta hafifçe yağlayın, üzerini temiz bir bezle örtün ve ılık bir yerde yaklaşık 1 saat kadar mayalanmaya bırakın. Hamur iki katına çıkana kadar bekleyin.',textFontSize),
              SizedBox(height: 15),
              _buildStepText("4. Fırını 220°C'ye ısıtın.",textFontSize),
              SizedBox(height: 15),
              _buildStepText('5. Sos için, domates sosunu sarımsak, kekik, tuz ve karabiberle karıştırın.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('6. Mayalanan hamuru unlanmış bir yüzeye alın ve pizza tepsinizin boyutuna göre şekil verin.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('7. Hamuru yağlı kağıtla kaplı bir pizza tepsisine yerleştirin.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('8. Sosu hamurun üzerine yayın.',textFontSize),
              SizedBox(height: 15),
              _buildStepText("9. Üzerine rendelenmiş mozzarella peyniri serpin.",textFontSize),
              SizedBox(height: 15),
              _buildStepText("10. Fırına verin ve yaklaşık 15-20 dakika kadar veya hamurun kenarları altın kahverengi olana kadar pişirin.",textFontSize),
              SizedBox(height: 15),
              _buildStepText("11. Fırından çıkardıktan sonra taze fesleğen yaprakları ile süsleyin.",textFontSize),
              SizedBox(height: 15),
              _buildStepText("12. Pizza birkaç dakika dinlendikten sonra dilimleyin ve sıcak servis yapın.",textFontSize),
               SizedBox(height: 50),
              _buildStepText('Notlar',textFontSize),
              _buildStepText('1) Bu tarif genellikle 4 kişilik bir pizza için uygundur, ancak hamurunuzu daha büyük veya daha küçük yaparak kişi sayısına göre ayarlayabilirsiniz.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('2) Hazırlama süresi yaklaşık 15 dakika, mayalanma süresi 1 saat ve pişirme süresi 15-20 dakikadır. Toplam süre yaklaşık 1 saat 30 dakikadır.',textFontSize),
              SizedBox(height: 15),
              _buildStepText('3) Margarita pizza, sade ve lezzetli bir pizza çeşididir ve genellikle taze malzemelerle hazırlanır. Fesleğen yaprakları pizzanın ana lezzeti olabilir, bu yüzden mümkünse taze fesleğen kullanmanız önerilir.',textFontSize),
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
    home: MargaritaPizza(),
  ));
}
