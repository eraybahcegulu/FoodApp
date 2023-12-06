import 'package:flutter/material.dart';

class PizzaData {
  final Color color;
  final Color recipeButtonColor;
  final AssetImage image;
  final String title;
  final String text;
  final String recipeTitle;
  final String person;
  final String preparationTime;
  final String cookingTime;

  PizzaData({
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

class Pizzalar {
  static List<PizzaData> getPizzalar() {
    return [
      PizzaData(
        color: Color.fromARGB(255, 82, 120, 143),
        recipeButtonColor: Color.fromARGB(255, 90, 211, 150),
        image: AssetImage('assets/images/pizzalar/margarita_pizza.png'),
        title: 'MARGARİTA PİZZA',
        text: 'Malzemeler:\n'
            '• 1 paket (yaklaşık 7 gram) instant maya\n'
            '• 1 su bardağı ılık su\n'
            '• 2.5 su bardağı un\n'
            '• 2 yemek kaşığı sıvı yağ\n'
            '• 1 çay kaşığı tuz ve karabiber\n'
            '• 1/2 su bardağı domates sosu\n'
            '• 1 diş sarımsak (isteğe bağlı, rendelenmiş)\n'
            '• 1 çay kaşığı kurutulmuş kekik\n'
            '• 1.5 su bardağı rendelenmiş mozzarella peyniri\n'
            '• Taze fesleğen yaprakları (isteğe bağlı)',
        recipeTitle: 'Tarife Bak',
        person: '4',
        preparationTime: '80 dakika',
        cookingTime: '15-20 dakika',
      ),
      PizzaData(
        color: Color.fromRGBO(219, 121, 121, 1),
        recipeButtonColor: Color.fromARGB(255, 201, 50, 193),
        image: AssetImage('assets/images/pizzalar/havaii_pizza.png'),
        title: 'HAVAİİ PİZZA',
        text: 'Malzemeler:\n'
            '• 1 paket (yaklaşık 7 gram) instant maya\n'
            '• 1 su bardağı ılık su\n'
            '• 2.5 su bardağı un\n'
            '• 2 yemek kaşığı sıvı yağ\n'
            '• 1 çay kaşığı tuz\n'
            '• 1/2 su bardağı domates sosu\n'
            '• 1/4 su bardağı barbekü sos\n'
            '• 1/4 su bardağı rendelenmiş mozzarella peyniri\n'
            '• 150 gram dilimlenmiş jambon veya hindi jambonu\n'
            '• 1/2 su bardağı döner parçaları (isteğe bağlı)\n'
            '• 1/2 su bardağı dilimlenmiş ananas (konserve veya taze)\n'
            '• 1/4 su bardağı dilimlenmiş siyah zeytin (isteğe bağlı)\n'
            '• 1/4 su bardağı dilimlenmiş yeşil biber (isteğe bağlı)\n'
            '• 1/4 su bardağı dilimlenmiş turşu biber (isteğe bağlı)',
        recipeTitle: 'Tarife Bak',
        person: '4',
        preparationTime: '80 dakika',
        cookingTime: '15-20 dakika',
      ),
      PizzaData(
        color: Color.fromARGB(255, 129, 184, 67),
        recipeButtonColor: Color.fromARGB(255, 120, 154, 192),
        image: AssetImage('assets/images/pizzalar/pepperoni_pizza.png'),
        title: 'PEPPERONİ PİZZA',
        text: 'Malzemeler:\n'
            '• 1 paket (yaklaşık 7 gram) instant maya\n'
            '• 1 su bardağı ılık su\n'
            '• 2.5 su bardağı un\n'
            '• 2 yemek kaşığı sıvı yağ\n'
            '• 1 çay kaşığı tuz\n'
            '• 1 su bardağı domates sosu\n'
            '• 1 diş sarımsak (isteğe bağlı, rendelenmiş)\n'
            '• 1 çay kaşığı kurutulmuş kekik\n'
            '• 1 çay kaşığı kurutulmuş fesleğen\n'
            '• Tuz ve karabiber (damak zevkinize göre)\n'
            '• 1.5 su bardağı rendelenmiş mozzarella peyniri\n'
            '• 100-150 gram dilimlenmiş pepperoni sosis\n'
            '• 1/2 su bardağı dilimlenmiş siyah zeytin (isteğe bağlı)\n'
            '• 1/2 su bardağı dilimlenmiş yeşil biber (isteğe bağlı)\n'
            '• 1/4 su bardağı dilimlenmiş turşu biber (isteğe bağlı)',
        recipeTitle: 'Tarife Bak',
        person: '4',
        preparationTime: '80 dakika',
        cookingTime: '15-20 dakika',
      ),
    ];
  }
}
