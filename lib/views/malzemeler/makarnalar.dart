import 'package:flutter/material.dart';

class MakarnaData {
  final Color color;
  final Color recipeButtonColor;
  final AssetImage image;
  final String title;
  final String text;
  final String recipeTitle;
  final String person;
  final String preparationTime;
  final String cookingTime;

  MakarnaData({
    required this.color,
    required this.recipeButtonColor,
    required this.image,
    required this.title,
    required this.text,
    required this.recipeTitle,
    required this.person,
    required this.preparationTime,
    required this.cookingTime,
  });
}

class Makarnalar {
  static List<MakarnaData> getMakarnalar() {
    return [
      MakarnaData(
        color: Color.fromARGB(255, 61, 77, 150),
        recipeButtonColor: Color.fromARGB(255, 145, 168, 102),
        image: AssetImage('assets/images/makarnalar/spagetti.png'),
        title: 'SPAGETTİ',
        text: 'Malzemeler:\n'
            '• 250 gram spagetti makarna\n'
            '• 2 yemek kaşığı zeytinyağı\n'
            '• 3-4 diş sarımsak (ince dilimlenmiş veya ezilmiş)\n'
            '• 1/4 çay bardağı taze doğranmış maydanoz\n'
            '• Tuz\n'
            '• Karabiber\n'
            '• 1/4 su bardağı rendelenmiş parmesan peyniri (isteğe bağlı)\n'
            '• Kırmızı biber pul biber (isteğe bağlı)',
        recipeTitle: 'Tarife Bak',
        person: '2',
        preparationTime: '15 dakika',
        cookingTime: '10 dakika',
      ),
      MakarnaData(
        color: Color.fromRGBO(170, 36, 163, 1),
        recipeButtonColor: Color.fromARGB(255, 168, 87, 55),
        image: AssetImage('assets/images/makarnalar/lazanya.png'),
        title: 'LAZANYA',
        text: 'Malzemeler:\n'
            '• 2 yemek kaşığı tereyağı veya margarin\n'
            '• 2 yemek kaşığı un\n'
            '• 2 su bardağı süt\n'
            '• Muskat rendesi (isteğe bağlı)\n'
            '• 2 yemek kaşığı zeytinyağı\n'
            '• 1 soğan (ince doğranmış)\n'
            '• 2 diş sarımsak (ince doğranmış veya ezilmiş)\n'
            '• 400 gram kıyma\n'
            '• 1 su bardağı domates sosu\n'
            '• 1 su bardağı domates püresi\n'
            '• 1 tatlı kaşığı kuru kekik\n'
            '• 1 tatlı kaşığı tuz ve karabiber\n'
            '• 250 gram lazanya makarnası\n'
            '• 2 su bardağı rendelenmiş mozzarella peyniri\n'
            '• 1 su bardağı rendelenmiş parmesan peyniri',
        recipeTitle: 'Tarife Bak',
        person: '4-6',
        preparationTime: '40 dakika',
        cookingTime: '30-35 dakika',
      ),
      MakarnaData(
        color: Color.fromARGB(255, 94, 206, 178),
        recipeButtonColor: Color.fromARGB(255, 147, 8, 228),
        image: AssetImage('assets/images/makarnalar/kori_soslu_eriste.png'),
        title: 'KÖRİ SOSLU ERİŞTE',
        text: 'Malzemeler:\n'
            '• 250 gram erişte makarnası\n'
            '• 2 yemek kaşığı tereyağı veya zeytinyağı\n'
            '• 1 büyük soğan (ince doğranmış)\n'
            '• 2 diş sarımsak (ince doğranmış veya ezilmiş)\n'
            '• 2 yemek kaşığı köri tozu\n'
            '• 1 su bardağı krema\n'
            '• 1/2 su bardağı tavuk suyu veya sebze suyu\n'
            '• Tuz ve karabiber\n'
            '• İsteğe bağlı olarak taze kişniş veya taze fesleğen yaprakları (süslemek için)',
        recipeTitle: 'Tarife Bak',
        person: '2',
        preparationTime: '10-15 dakika',
        cookingTime: '15-20 dakika',
      ),
    ];
  }
}
