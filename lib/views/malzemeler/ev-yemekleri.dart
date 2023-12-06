import 'package:flutter/material.dart';

class EvYemegiData {
  final Color color;
  final Color recipeButtonColor;
  final AssetImage image;
  final String title;
  final String text;
  final String recipeTitle;
  final String person;
  final String preparationTime;
  final String cookingTime;

  EvYemegiData({
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

class EvYemekleri {
  static List<EvYemegiData> getEvYemekleri() {
    return [
      EvYemegiData(
        color: Color.fromARGB(255, 221, 235, 222),
        recipeButtonColor: Color.fromARGB(255, 46, 49, 40),
        image: AssetImage('assets/images/ev-yemekleri/kuru-fasulye.png'),
        title: 'KURU FASULYE',
        text: 'Malzemeler:\n'
            '• 2 su bardağı kuru fasulye\n'
            '• 1 adet büyük boy soğan\n'
            '• 2-3 diş sarımsak\n'
            '• 2 yemek kaşığı sıvı yağ\n'
            '• 1 yemek kaşığı salça\n'
            '• 1 tatlı kaşığı tuz (isteğe bağlı, damak zevkinize göre ayarlayabilirsiniz)\n'
            '• Yarım çay kaşığı karabiber\n'
            '• 1 tatlı kaşığı pul biber (isteğe bağlı)\n'
            '• 6 su bardağı su (fasulyeleri haşlamak için)\n'
            '• Sıcak su (yemeği pişirmek için)\n'
            '• Pilav (isteğe bağlı)',
        recipeTitle: 'Tarife Bak',
        person: '4-6',
        preparationTime: '20 dakika',
        cookingTime: '70-80 dakika',
      ),

      EvYemegiData(
        color: Color.fromARGB(255, 231, 80, 38),
        recipeButtonColor: Color.fromARGB(255, 164, 192, 109),
        image: AssetImage('assets/images/ev-yemekleri/tas-kebabi.jpg'),
        title: 'TAS KEBABI',
        text: 'Malzemeler:\n'
            '• 500 gram dana eti (kuşbaşı doğranmış)\n'
            '• 2 adet orta boy soğan (rendelenmiş)\n'
            '• 2 yemek kaşığı sıvı yağ\n'
            '• 2 yemek kaşığı domates salçası\n'
            '• 1 tatlı kaşığı biber salçası\n'
            '• 1 çay bardağı sıcak su\n'
            '• Tuz, karabiber, pul biber (isteğe bağlı)\n'
            '• 1 adet limon suyu\n'
            '• 4 adet yeşil biber\n'
            '• 2 adet domates\n',
        recipeTitle: 'Tarife Bak',
        person: '4',
        preparationTime: '20 dakika',
        cookingTime: '45 dakika',
      ),
    ];
  }
}
