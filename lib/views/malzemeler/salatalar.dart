import 'package:flutter/material.dart';

class SalataData {
  final Color color;
  final Color recipeButtonColor;
  final AssetImage image;
  final String title;
  final String text;
  final String recipeTitle;
  final String person;
  final String preparationTime;
  final String coolingTime;

  SalataData({
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

class Salatalar {
  static List<SalataData> getSalatalar() {
    return [
      SalataData(
        color: Colors.red,
        recipeButtonColor: const Color.fromARGB(255, 143, 54, 244),
        image: AssetImage('assets/images/salatalar/akdeniz_salatasi.png'),
        title: 'AKDENİZ SALATASI',
        text: 'Malzemeler:\n'
            '• 2 büyük domates\n'
            '• 1 salatalık\n'
            '• 1 yeşil biber\n'
            '• 1 kırmızı biber\n'
            '• 1 soğan\n'
            '• 1/2 su bardağı siyah zeytin (çekirdekleri çıkarılmış)\n'
            '• 1/2 su bardağı yeşil zeytin (çekirdekleri çıkarılmış)\n'
            '• 200 gram beyaz peynir veya lor peyniri\n'
            '• Taze roka veya taze nane yaprakları (isteğe bağlı)\n'
            '• 1/4 su bardağı zeytinyağı\n'
            '• 2 yemek kaşığı limon suyu\n'
            '• 1 diş sarımsak (isteğe bağlı, rendelenmiş)\n'
            '• Tuz ve karabiber (damak zevkinize göre)',
        recipeTitle: 'Tarife Bak',
        person: '4',
        preparationTime: '15-20 dakika',
        coolingTime: 'yok',
      ),
      SalataData(
        color: const Color.fromARGB(255, 61, 204, 137),
        recipeButtonColor: Colors.red,
        image: AssetImage('assets/images/salatalar/patates_salatasi.png'),
        title: 'PATATES SALATASI',
        text: 'Malzemeler:\n'
            '• 4 büyük patates\n'
            '• 3 yumurta (haşlanmış ve doğranmış)\n'
            '• 1/2 su bardağı mayonez\n'
            '• 2 yemek kaşığı yoğurt (isteğe bağlı)\n'
            '• 1 yemek kaşığı hardal (isteğe bağlı)\n'
            '• 2 çay kaşığı sirke veya limon suyu\n'
            '• 1/2 çay kaşığı tuz (veya damak zevkinize göre)\n'
            '• 1/4 çay kaşığı karabiber\n'
            '• 1/4 su bardağı doğranmış taze soğan (isteğe bağlı)\n'
            '• 1/4 su bardağı doğranmış taze dereotu veya maydanoz (isteğe bağlı)',
        recipeTitle: 'Tarife Bak',
        person: '4-6',
        preparationTime: '30 dakika',
        coolingTime: '60 dakika',
      ),
      SalataData(
        color: const Color.fromARGB(255, 178, 77, 196),
        recipeButtonColor: Color.fromARGB(255, 37, 187, 94),
        image: AssetImage('assets/images/salatalar/rus_salatasi.png'),
        title: 'RUS SALATASI',
        text: 'Malzemeler:\n'
            '• 4 büyük haşlanmış patates\n'
            '• 3 büyük haşlanmış havuç\n'
            '• 200 gram haşlanmış yeşil bezelye (konserve veya taze)\n'
            '• 200 gram haşlanmış döner parçaları (isteğe bağlı, tavuk veya hindi de kullanabilirsiniz)\n'
            '• 4 haşlanmış yumurta\n'
            '• 1/2 su bardağı haşlanmış mısır (konserve veya taze)\n'
            '• 1/2 su bardağı mayonez\n'
            '• 1/4 su bardağı yoğurt (isteğe bağlı)\n'
            '• 2-3 yemek kaşığı hardal (isteğe bağlı)\n'
            '• Tuz ve karabiber (damak zevkinize göre)\n'
            '• 1/2 su bardağı doğranmış taze soğan (isteğe bağlı)\n'
            '• Taze dereotu veya maydanoz yaprakları (süslemek için)',
        recipeTitle: 'Tarife Bak',
        person: '4-6',
        preparationTime: '30 dakika',
        coolingTime: '60 dakika',
      ),
      SalataData(
        color: Colors.blue,
        recipeButtonColor: Color.fromARGB(255, 180, 65, 12),
        image: AssetImage('assets/images/salatalar/sezar_salatasi.png'),
        title: 'SEZAR SALATASI',
        text: 'Malzemeler:\n'
            '• 2 adet kıvırcık marul\n'
            '• 1/2 su bardağı rendelenmiş parmesan peyniri\n'
            '• 1 su bardağı çıtır ekmek kırıntıları veya krutonlar (isteğe bağlı)\n'
            '• 2 büyük tavuk göğsü\n'
            '• 2 yemek kaşığı zeytinyağı\n'
            '• Tuz ve karabiber\n'
            '• 1/2 su bardağı mayonez\n'
            '• 1/4 su bardağı rendelenmiş parmesan peyniri\n'
            '• 2 diş sarımsak (isteğe bağlı, rendelenmiş veya dövülmüş)\n'
            '• 2 yemek kaşığı limon suyu\n'
            '• 1 yemek kaşığı dijon hardalı\n'
            '• 1 yemek kaşığı Worcestershire sosu',
        recipeTitle: 'Tarife Bak',
        person: '2',
        preparationTime: '30 dakika',
        coolingTime: 'yok',
      ),
      SalataData(
        color: Color.fromARGB(255, 173, 87, 120),
        recipeButtonColor: Color.fromARGB(255, 109, 126, 182),
        image: AssetImage('assets/images/salatalar/makarna_salatasi.png'),
        title: 'MAKARNA SALATASI',
        text: 'Malzemeler:\n'
            '• 2 su bardağı makarna (istediğiniz türde)\n'
            '• 1 su bardağı haşlanmış mısır (konserve veya taze)\n'
            '• 1/2 su bardağı doğranmış salatalık\n'
            '• 1/2 su bardağı doğranmış domates\n'
            '• 1/4 su bardağı doğranmış yeşil biber\n'
            '• 1/4 su bardağı doğranmış kırmızı biber\n'
            '• 1/4 su bardağı doğranmış mor soğan (isteğe bağlı)\n'
            '• 1/4 su bardağı doğranmış taze maydanoz veya taze dereotu (isteğe bağlı)\n'
            '• 1/2 su bardağı mayonez\n'
            '• 2 yemek kaşığı yoğurt (isteğe bağlı)\n'
            '• 2 yemek kaşığı sızma zeytinyağı\n'
            '• 2 yemek kaşığı beyaz sirke veya limon suyu\n'
            '• 1 diş sarımsak (isteğe bağlı, rendelenmiş veya ezilmiş)\n'
            '• Tuz ve karabiber (damak zevkinize göre)',
        recipeTitle: 'Tarife Bak',
        person: '4-6',
        preparationTime: '15-20 dakika',
        coolingTime: '60 dakika',
      ),
      SalataData(
        color: Color.fromARGB(255, 57, 173, 102),
        recipeButtonColor: Color.fromARGB(255, 93, 119, 231),
        image: AssetImage('assets/images/salatalar/kereviz_salatasi.png'),
        title: 'KEREVİZ SALATASI',
        text: 'Malzemeler:\n'
            '• 3 büyük kereviz (kabuklarını soyun ve doğrayın)\n'
            '• 1/2 su bardağı mayonez\n'
            '• 1 yemek kaşığı yoğurt (isteğe bağlı)\n'
            '• 1 yemek kaşığı limon suyu\n'
            '• 1 çay bardağı ceviz içi (isteğe bağlı, iri doğranmış)\n'
            '• 1/2 su bardağı ceviz içi (kabuklarından arındırılmış ve iri doğranmış)\n'
            '• Tuz ve karabiber (damak zevkinize göre)\n'
            '• Taze dereotu veya maydanoz yaprakları (süslemek için)',
        recipeTitle: 'Tarife Bak',
        person: '4-6',
        preparationTime: '15-20 dakika',
        coolingTime: 'yok',
      ),
    ];
  }
}
