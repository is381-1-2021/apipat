import 'package:cloud_firestore/cloud_firestore.dart';

class TransactionModel{
  late String title;
  late double amount;
  late DateTime date;

  TransactionModel({required this.title,required this.amount,required this.date});
}