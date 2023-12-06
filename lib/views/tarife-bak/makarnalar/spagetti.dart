import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Spagetti extends StatelessWidget {
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
          'SPAGETTİ TARİFİ',
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
                  "1. Spagetti makarnayı büyük bir tencerede tuzlu kaynar suyun içinde talimatlara göre pişirin. Makarnayı al dente (hafif diri) pişirin.",
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '2. Pişirme süresi boyunca arada bir karıştırın ve yapışmaması için dikkat edin.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '3. Ayrı bir tavada zeytinyağını orta ateşte ısıtın. Sarımsakları ekleyin ve sarımsaklar hafifçe pembeleşene kadar kavurun. Dikkatli olun, sarımsak hızlıca yanabilir.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  "4. Kavrulmuş sarımsakları tencereye dökün ve üzerine taze doğranmış maydanozu ekleyin. Tuz ve karabiberle tatlandırın.",
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '5. Pişen spagetti makarnayı süzün ve sarımsaklı zeytinyağı karışımının üzerine ekleyin. Karıştırarak makarnayı zeytinyağı, sarımsak ve maydanoz karışımıyla kaplayın.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '6. İsteğe bağlı olarak rendelenmiş parmesan peyniri veya kırmızı biber pul biber ekleyin.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '7. Sıcak servis yapın ve ekstra parmesan veya taze doğranmış maydanoz ile süsleyin.',
                  textFontSize),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              _buildStepText('Notlar', textFontSize),
              _buildStepText(
                  '1) Bu tarif genellikle 2 kişilik bir öğün için uygundur. Miktarı artırarak daha fazla kişiye servis yapabilirsiniz.',
                  textFontSize),
              SizedBox(height: 15),
              _buildStepText(
                  '2) Hazırlık işlemleri yaklaşık 10-15 dakika sürer. Makarna pişirme süresi yaklaşık 10-12 dakikadır.',
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
    home: Spagetti(),
  ));
}
