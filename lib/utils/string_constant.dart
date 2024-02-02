import 'package:navigation_task/model/detail_model.dart';

class StringConstant {
  static String userTitle = 'Good Evening';
  static String userName = 'David Warner';
  static String cardHeader = 'Get special discount';
  static String cardTitle = 'Up to 35%';
  static String cardSubTitle = '01 Jan 2024 - 05 Feb 2024';
  static List stringList = ['All', 'Indoor', 'Outdoor', 'Pots', 'Seeds'];
  static List stringList2 = [
    ['Zamioculcas', '\$109'],
    ['Areca palm', '\$47'],
    ['Amaranthus', '\$58'],
    ['Daucus carota', '\$124']
  ];
  static String detailsTitle = 'Details';
  static String addToCart = 'Add to cart';
  static String temp = 'Temperature';
  static String celcius = '30 C';
  static String height = 'Height';
  static String heighCM = '45-60 cm';
  static String plantName = 'Zamioculcas';
  static String plantDescription =
      "It is an herbaceous perennial growing to 45–60 centimetres (18–24 in) tall, from a stout, underground, succulent rhizome. It is normally evergreen but becomes deciduous";
}

class ModelList {
  static List<DetailModel> details = [
    DetailModel(
        name: 'Zamioculcas', price: '\$109', image: 'assets/images/plant2.png'),
    DetailModel(
        name: 'Areca palm', price: '\$47', image: 'assets/images/plant3.png'),
    DetailModel(
        name: 'Amaranthus', price: '\$58', image: 'assets/images/plant4.png'),
    DetailModel(
        name: 'Daucus carota',
        price: '\$124',
        image: 'assets/images/plant5.webp')
  ];
}
