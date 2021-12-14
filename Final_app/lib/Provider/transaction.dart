import 'package:dog_app/model/transaction_model.dart';
import 'package:flutter/foundation.dart';

class TransactionProvider with ChangeNotifier{
  List<TransactionModel> transactions = [
    TransactionModel(title: "อาหาร",
    amount: 150,date: DateTime.now()),
    TransactionModel(title: "ชอปปิ้งทั่วไป",
    amount: 100,date: DateTime.now()),
    TransactionModel(title: "โทรศัพท์",
    amount: 20,date: DateTime.now()),
  ];

  List<TransactionModel>getTransaction(){
    return transactions;
  }

  addTransaction(TransactionModel statement){
    transactions.add(statement);
  }
}