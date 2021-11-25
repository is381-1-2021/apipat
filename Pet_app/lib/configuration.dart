import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primaryGreen = Color(0xff416d6d);
List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.grey[300], blurRadius: 30, offset: Offset(0, 10))
];

List<Map> categories = [
  {'name': 'Cats', 'iconPath': 'images/cat.png'},
  {'name': 'Professors', 'iconPath': 'images/pro.png'},
  {'name': 'Health', 'iconPath': 'images/he.png'},
  {'name': 'Grooming', 'iconPath': 'images/bath.png'},
  {'name': 'Forum', 'iconPath': 'images/forum.png'}
];

List<Map> drawerItems=[
  {
    'icon': FontAwesomeIcons.paw,
    'title' : 'Categoties'
  },
  {
    'icon': Icons.bathroom,
    'title' : 'Grooming'
  },
  {
    'icon': FontAwesomeIcons.plus,
    'title' : 'Add pet'
  },
  {
    'icon': Icons.favorite,
    'title' : 'Adoptation'
  },
  {
    'icon': Icons.mail,
    'title' : 'Contact Professer'
  },
  {
    'icon': FontAwesomeIcons.userAlt,
    'title' : 'Profile'
  },
];