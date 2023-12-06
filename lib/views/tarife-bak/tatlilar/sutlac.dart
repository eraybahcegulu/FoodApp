import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sutlac extends StatelessWidget {
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
          'SÜTLAÇ TARİFİ',
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
                  "1. Sütlaç pirincini yıkayın ve süzün. Eğer sütlaç pirinci kullanıyorsanız, daha iyi sonuç elde edersiniz.",
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '2. Bir tencereye yıkanmış pirinci ve yarım su bardağı suyu ekleyin. Orta ateşte pirinçler suyunu çekene kadar pişirin. Pirinçlerin hafifçe şişmesi gerekebilir.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '3. Pirinçler suyunu çektiğinde, 1 litre tam yağlı sütü ekleyin. Sütü eklerken sürekli karıştırarak kaynamasını bekleyin.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  "4. Süt kaynamaya başladığında, ateşi kısın ve sık sık karıştırarak 15-20 dakika kadar daha pişirin. Pirinçler iyice yumuşayana kadar pişirme işlemine devam edin.",
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '5. Bir kasede pirinç ununu (veya buğday nişastasını) bir miktar sütle karıştırın. Bu, topaklanmaları önlemeye yardımcı olacaktır.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '6. Karışımı sütlaça ekleyin ve sürekli karıştırarak koyulaşana kadar pişirin. Dikkatli olun, karışım hızla koyulaşabilir.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '7. Koyulaşan sütlaç karışımını ocaktan alın. Eğer kullanıyorsanız vanilya çubuğunu içinden çıkarın veya vanilya özütünü ekleyin ve karıştırın.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '8. Sütlaçları kaselere veya servis kaplarına dökün ve oda sıcaklığında soğumaya bırakın.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '9. Sütlaçlar oda sıcaklığında iyice soğuduktan sonra buzdolabına kaldırın ve en az 2-3 saat boyunca soğutun.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '10. Soğuyan sütlaçları buzdolabından çıkarın, üzerlerine taze çekilmiş tarçın veya toz tarçın serpin ve servis yapın.',
                  textFontSize),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              _buildStepText('Notlar', textFontSize),
              _buildStepText(
                  '1) Bu tarif genellikle 4-6 kişilik bir porsiyon elde edilir, ancak miktarı artırabilir veya azaltabilirsiniz.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '2) Oda sıcaklığında 2-3 saat boyunca soğuması gerekmektedir.',
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
    home: Sutlac(),
  ));
}
