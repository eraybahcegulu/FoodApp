import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Kibris extends StatelessWidget {
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
          'KIBRIS TATLISI TARİFİ',
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
                  "1. Tatlının şerbeti için; su ve toz şekeri derin bir karıştırma kabına alın. Şeker taneleri eriyene kadar sürekli karıştırdığınız şerbet karışımını kısık ateşte 15 dakika kadar kaynatın.",
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '2. Kıvam alıp şurup kıvamına yaklaşan şerbete limon suyunu ekleyip kestirdikten sonra ocaktan alın. Soğuması için ayrı bir yerde dinlendirin.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '3. Tatlının kekini hazırlamak için; oda sıcaklığında beklettiğiniz yumurtaları derin bir karıştırma kabına kırın. Toz şeker ilavesiyle şeker taneleri tamamen eriyene kadar karıştırın.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  "4. Sırasıyla; sıvı yağ, rendelenmiş Hindistan cevizi, galeta unu, ince çekilmiş ceviz içi ve kabartma tozu ekleyip karıştırma işlemini sürdürün.",
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '5. Pişireceğiniz kalıbı sıvı yağ ile yağlayın. Hazırladığınız kek karışımını eşit olarak yaydıktan sonra önceden ısıtılmış 160 derece fırında 30 dakika kadar pişirin.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '6. Üzerine önceden hazırladığınız soğuk şerbeti döküp içine çekmesi için bekletin.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '7. Kreması için; süt, nişasta ve toz şekeri derin bir tencereye alıp sürekli karıştırarak orta ateşte pişirin. Muhallebi kıvamına gelen kremayı ocaktan indirmeden önce vanilin ekleyin ve karıştırıp ocaktan alın.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '8. Ocaktan aldıktan sonra toz krem şanti ilavesiyle çırparak karıştırın.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '9. Krema karışımını, şerbetini çeken tatlının üzerine yayın.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '10. Hindistan cevizini de tüm yüzeye serpiştirin.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '11. Buzdolabında soğuttuktan sonra süsleyip sevdiklerinizle afiyetle tüketebilirsiniz.',
                  textFontSize),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              _buildStepText('Notlar', textFontSize),
              _buildStepText(
                  '1) Bu tarif genellikle 6 kişilik bir tatlı elde etmenizi sağlar.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText('2) Hazırlık işlemleri yaklaşık 40 dakika sürer.',
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
    home: Kibris(),
  ));
}
