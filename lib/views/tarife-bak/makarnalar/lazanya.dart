import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Lazanya extends StatelessWidget {
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
          'LAZANYA TARİFİ',
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
                  "1. Öncelikle beyaz sosu hazırlayın: Bir tencerede tereyağını eritin. Unu ekleyip kısık ateşte kokusu çıkana kadar karıştırarak kavurun. Ardından yavaşça sütü ekleyin ve topaklanmaması için sürekli karıştırarak kaynamaya bırakın. Kaynamaya başladığında tuz, karabiber ve isteğe bağlı olarak muskat rendesini ekleyin. Sosu kıvam alana kadar pişirin.",
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '2. Kırmızı sos için, bir tavada zeytinyağını ısıtın. Soğanları ve sarımsakları ekleyip yumuşayana kadar kavurun. Ardından kıymayı ekleyip kahverengi olana kadar kavurun. Domates sosu, domates püresi, kuru kekik, tuz ve karabiberi ekleyin. Sosu kaynatın, ardından kısık ateşte 15-20 dakika kadar pişirin.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '3. Lazanya makarnalarını tuzlu kaynar suyla haşlayın. Makarnaları yumuşak ama hala biraz diri bırakın. Ardından soğuk suyla durulayarak yapışmalarını önleyin.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  "4. Fırın kabını hafifçe yağlayın ve lazanya yapmaya başlamak için tabanına biraz beyaz sos dökün. Ardından bir kat lazanya makarnası, bir kat kırmızı sos, bir kat mozzarella ve parmesan peyniri ekleyin. Bu adımları tekrarlayın ve en üst katı beyaz sos ve peynirle tamamlayın.",
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  "5. Fırını 180°C önceden ısıtın. Lazanyayı örtün ve 30-35 dakika kadar pişirin. Son 10 dakika açık olarak pişirerek üstünün kızarmasını sağlayabilirsiniz.",
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '6. Fırından çıkarın ve 10 dakika kadar dinlendirin. Üzerine taze fesleğen yaprakları, taze çekilmiş karabiber ve biraz parmesan serpin. Dilimleyin ve sıcak servis yapın.',
                  textFontSize),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              _buildStepText('Notlar', textFontSize),
              _buildStepText(
                  '1) Bu tarif genellikle 4-6 kişilik bir öğün için uygundur.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '2) Hazırlık işlemleri yaklaşık 30-40 dakika sürer. Lazanya pişirme süresi yaklaşık 30-35 dakikadır. ',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '3) Lazanya yaparken kullanacağınız makarnanın tamamen haşlanmış olmasına dikkat edin. Makarnaları tuzlu kaynar suda haşladıktan sonra soğuk suyla durulayarak yapışmalarını önleyebilirsiniz. Ayrıca makarnaların birbirine yapışmaması için aralarına biraz zeytinyağı sürmek de faydalı olabilir. ',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '4) Beyaz sosunuzun pürüzsüz ve kıvamlı olmasına özen gösterin. Sosu çok fazla kaynatmadan veya unun rengi koyulaşana kadar pişirmeden kıvam almasını sağlayın.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '5) Kırmızı sosunuzun lezzetli olması için yeterince baharat ve tuz eklediğinizden emin olun. İsteğe bağlı olarak kırmızı biber pul biber veya taze otlar (örneğin, fesleğen) ekleyebilirsiniz.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '6) Rendelenmiş mozzarella ve parmesan peyniri, lazanya için geleneksel olarak kullanılan peynirlerdir, ancak farklı peynir çeşitlerini deneyerek lezzeti zenginleştirebilirsiniz. Cheddar, ricotta veya provolone gibi peynirler eklemeyi düşünebilirsiniz.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '7)  Lazanyayı fırından çıkardıktan sonra, en azından 10 dakika kadar dinlendirmek lezzetin iyileşmesine yardımcı olur ve dilimlemeyi kolaylaştırır.',
                  textFontSize),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 248, 246, 143),
    );
  }

  Widget _buildStepText(
    String text,
    textFontSize,
  ) {
    return Text(
      text,
      style: GoogleFonts.caveat(
          fontSize: textFontSize, fontWeight: FontWeight.bold),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Lazanya(),
  ));
}
