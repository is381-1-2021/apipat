import 'package:flutter/material.dart';

class FormModel extends ChangeNotifier {
  String? _Username;
  String? _lastName;
  int? _age;
  String? _CatInfor;

  get Username => this._Username;

 set Username( value) {
   this._Username = value;
   notifyListeners();
 }

  get lastName => this._lastName;

 set lastName( value) {
  this._lastName = value;
  notifyListeners();
 }

  get age => this._age;

 set age( value) {
   this._age = value;
   notifyListeners();
 }

 get CatInfor => this._CatInfor;

 set CatInfor( value) {
   this._CatInfor = value;
   notifyListeners();
 }
}

