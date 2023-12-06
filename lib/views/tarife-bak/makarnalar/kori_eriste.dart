import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KoriEriste extends StatelessWidget {
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
          'KÖRİ SOSLU ERİŞTE TARİFİ',
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
                  "1. Erişte makarnasını tuzlu kaynar suyla talimatlara göre pişirin. Pişirme süresi boyunca ara sıra karıştırarak yapışmamasını sağlayın. Makarnaları yumuşak ama hala biraz diri bırakın. Piştikten sonra süzün ve bir kenarda bekletin.",
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '2. Büyük bir tavada tereyağını veya zeytinyağını eritin. İnce doğranmış soğanları ekleyin ve yumuşayana kadar kısık ateşte kavurun (yaklaşık 3-4 dakika).',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '3. Sarımsakları ekleyin ve 1 dakika kadar daha kavurun, kokusu çıkana kadar karıştırın.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  "4. Köri tozunu ekleyin ve kısık ateşte 1-2 dakika boyunca karıştırarak pişirin. Köri tozu yağ ile karışıp aromalarını açacak.",
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '5. Krema ve tavuk suyu (veya sebze suyu) ekleyin. Karışımı kaynamaya bırakın ve ardından ısınınını azaltarak 5 dakika kadar hafifçe kaynatın, sos koyulaşıncaya kadar ara sıra karıştırın.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '6. Tuz ve taze çekilmiş karabiber ile sosu tatlandırın.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '7. Haşlanmış erişte makarnasını tavada hazırladığınız köri sosuna ekleyin. Makarnaları sosla iyice kaplayana kadar karıştırın.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '8. İsteğe bağlı olarak taze kişniş veya taze fesleğen yaprakları ile süsleyin.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  "9. Köri soslu erişteyi sıcak servis yapın.", textFontSize),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              _buildStepText('Notlar', textFontSize),
              _buildStepText(
                  '1) Bu tarif genellikle 2-3 kişilik bir öğün için uygundur. Malzeme miktarını artırarak veya azaltarak kişi sayısına göre ayarlayabilirsiniz.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '2) Hazırlık işlemleri yaklaşık 10-15 dakika sürer. Pişirme süresi yaklaşık 15-20 dakikadır.',
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
    home: KoriEriste(),
  ));
}
