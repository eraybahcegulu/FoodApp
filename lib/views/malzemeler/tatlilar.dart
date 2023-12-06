import 'package:flutter/material.dart';

class TatliData {
  final Color color;
  final Color recipeButtonColor;
  final AssetImage image;
  final String title;
  final String text;
  final String recipeTitle;
  final String person;
  final String preparationTime;
  final String coolingTime;

  TatliData({
    required this.color,
    required this.recipeButtonColor,
    required this.image,
    required this.title,
    required this.text,
    required this.recipeTitle,
    required this.person,
    required this.preparationTime,
    required this.coolingTime,
  });
}

class Tatlilar {
  static List<TatliData> getTatlilar() {
    return [
      TatliData(
        color: Color.fromARGB(255, 230, 179, 84),
        recipeButtonColor: Color.fromARGB(255, 167, 74, 86),
        image: AssetImage('assets/images/tatlilar/sutlac.png'),
        title: 'SÜTLAÇ',
        text: 'Malzemeler:\n'
            '• 1/2 su bardağı sütlaç pirinci\n'
            '• 1 litre tam yağlı süt\n'
            '• 1 su bardağı toz şeker (isteğe bağlı olarak şeker miktarını artırabilir veya azaltabilirsiniz)\n'
            '• 2 yemek kaşığı pirinç unu (veya buğday nişastası)\n'
            '• 1 vanilya çubuğu veya 1 tatlı kaşığı vanilya özütü\n'
            '• Yarım su bardağı su\n'
            '• Taze çekilmiş tarçın veya toz tarçın (süslemek için)',
        recipeTitle: 'Tarife Bak',
        person: '4-6',
        preparationTime: '30-40 dakika',
        coolingTime: '2-3 saat',
      ),
      TatliData(
        color: Color.fromRGBO(15, 106, 243, 1),
        recipeButtonColor: Color.fromARGB(255, 230, 207, 135),
        image: AssetImage('assets/images/tatlilar/trilece.png'),
        title: 'TRİLEÇE',
        text: 'Malzemeler:\n'
            '• Keki İçin:\n'
            '  • 3 yumurta\n'
            '  • 1 su bardağı toz şeker\n'
            '  • 1 su bardağı un\n'
            '  • 1 tatlı kaşığı kabartma tozu\n'
            '  • 1 tatlı kaşığı vanilya özütü\n'
            '• Süt Şerbeti İçin:\n'
            '  • 2 su bardağı süt\n'
            '  • 1 su bardağı toz şeker\n'
            '  • 1 su bardağı su\n'
            '• Krema İçin:\n'
            '  • 2 su bardağı süt\n'
            '  • 2 yemek kaşığı nişasta\n'
            '  • 1/2 su bardağı toz şeker\n'
            '  • 2 yemek kaşığı tereyağı\n'
            '  • 1 tatlı kaşığı vanilya özütü',
        recipeTitle: 'Tarife Bak',
        person: '8',
        preparationTime: '40 dakika',
        coolingTime: '2-3 saat',
      ),
      TatliData(
        color: Color.fromARGB(255, 5, 121, 92),
        recipeButtonColor: Color.fromARGB(255, 185, 149, 206),
        image: AssetImage('assets/images/tatlilar/kibris.png'),
        title: 'KIBRIS TATLISI',
        text: 'Malzemeler:\n'
            '• 1 su bardağı galeta unu\n'
            '• 1/2 su bardağı toz şeker\n'
            '• 1 paket kabartma tozu\n'
            '• 3 adet yumurta\n'
            '• 1/2 su bardağı sıvı yağ\n'
            '• 2 su bardağı Hindistan cevizi\n'
            '• 1 su bardağı ceviz içi (ince çekilmiş)\n'
            '• Kreması için:\n'
            '  • 1 su bardağı mısır nişastası\n'
            '  • 1 litre süt\n'
            '  • 1 paket toz krem şanti\n'
            '  • 1 çay bardağı toz şeker\n'
            '  • 1 paket vanilin\n'
            '• Şerbeti için:\n'
            '  • 1 su bardağı toz şeker\n'
            '  • 1,5 su bardağı su\n'
            '  • 2 damla taze sıkılmış limon suyu',
        recipeTitle: 'Tarife Bak',
        person: '6',
        preparationTime: '40 dakika',
        coolingTime: '2-3 saat',
      ),
        TatliData(
        color: Color.fromARGB(255, 37, 129, 204),
        recipeButtonColor: Color.fromARGB(255, 91, 104, 43),
        image: AssetImage('assets/images/tatlilar/mozaik-pasta.jpg'),
        title: 'MOZAİK PASTA',
        text: 'Malzemeler:\n'
            '• 200 gram tereyağı\n'
            '• 200 gram bitter çikolata\n'
            '• 3 yemek kaşığı kakao\n'
            '• 1 su bardağı toz şeker\n'
            '• 4 adet yumurta\n'
            '• 1 paket vanilin şeker\n'
            '• 2 paket petibör bisküvi\n'
            '• Yarım su bardağı süt\n'
            '• Yarım su bardağı iri çekilmiş ceviz içi\n'
            '• Üzeri İçin:\n'
            '  • Hindistancevizi veya rendelenmiş çikolata\n',
        recipeTitle: 'Tarife Bak',
        person: '8-10',
        preparationTime: '30 dakika',
        coolingTime: '4-5 saat',
      ),
    ];
  }
}
