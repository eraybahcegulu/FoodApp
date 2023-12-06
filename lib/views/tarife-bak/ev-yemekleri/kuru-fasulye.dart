import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KuruFasulye extends StatelessWidget {
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
          'KURU FASULYE TARİFİ',
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
                  "1. Kuru fasulyeleri yıkayın ve süzgece alın.", textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '2. Büyük bir tencereye 6 su bardağı suyu ekleyin, fasulyeleri ekleyin ve kaynamaya bırakın. Fasulyeleri yaklaşık 15-20 dakika haşlayın.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText('3. Haşlanmış fasulyeleri süzün ve kenara alın.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText("4. Soğanı ince ince doğrayın, sarımsakları ezin.",
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '5. Bir tencerede sıvı yağı ısıtın, doğranmış soğanları ekleyin ve pembeleşene kadar kavurun.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '6. Sarımsakları ekleyip kokusu çıkana kadar kavurun.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '7. Salçayı ekleyin, kısa bir süre karıştırarak kavurun.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '8. Haşlanmış fasulyeleri tencereye ilave edin, tuz, karabiber ve isteğe bağlı olarak pul biberi ekleyin.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  "9. Sıcak suyu ekleyin ve karıştırın. Tencerenin kapağını kapatın ve kısık ateşte fasulyeler iyice yumuşayana kadar pişirin. (Yaklaşık 1-1.5 saat)",
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  "10. Pişen kuru fasulyeyi ocaktan alın.", textFontSize),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              _buildStepText('Notlar', textFontSize),
              _buildStepText(
                  '1) Bu tarif genellikle 4-6 kişilik bir öğün için uygundur. Malzeme miktarını artırarak veya azaltarak kişi sayısına göre ayarlayabilirsiniz.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '2) Hazırlık işlemleri yaklaşık 20-30 dakika sürer. Pişirme süresi yaklaşık 70-80 dakikadır.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '3) Pişirme süresi fasulyelerin cinsine ve büyüklüğüne bağlı olarak değişebilir, ara ara kontrol ederek yumuşaklığını kontrol edebilirsiniz.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '4) Dilerseniz yemeğin içine et de ekleyebilirsiniz, bu durumda eti önceden haşlamak veya kavurmak gerekebilir.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '4) İsteğe bağlı olarak yanında pilav ile servis yapabilirsiniz.',
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
    home: KuruFasulye(),
  ));
}
