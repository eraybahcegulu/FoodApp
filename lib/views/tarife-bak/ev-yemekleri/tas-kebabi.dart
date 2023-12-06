import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TasKebabi extends StatelessWidget {
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
          'TAS KEBABI TARİFİ',
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
              _buildStepText("1. Dana etini kuşbaşı doğrayın.", textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '2. Rendelenmiş soğanı sıvı yağda pembeleşene kadar kavurun.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText('3. Üzerine etleri ekleyip suyunu salıp çekene kadar kısık ateşte kavurun.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText("4. Salçaları ekleyip karıştırın ve ardından sıcak suyu ilave edin.",
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '5. Etler yumuşayana kadar pişirin. İsteğe bağlı olarak baharatları da ekleyebilirsiniz.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '6. Limon suyu, yeşil biber ve doğranmış domatesleri ekleyin. Karışımı bir süre daha pişirin.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '7. Servis yapmadan önce tuzunu kontrol edip, gerekirse ayarlayın.',
                  textFontSize),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              _buildStepText('Notlar', textFontSize),
              _buildStepText(
                  '1) Tas kebabı geleneksel olarak taş üzerinde servis edilir. Taşın ısısını koruması için önceden ısıtılması önemlidir.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '2) Hazırlık işlemleri yaklaşık 20-30 dakika sürer. Pişirme süresi yaklaşık 45 dakikadır.',
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
    home: TasKebabi(),
  ));
}
