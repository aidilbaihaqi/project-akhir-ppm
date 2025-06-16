import 'package:flutter/material.dart';
import 'package:shamo_frontend/models/cart_model.dart';
import 'package:shamo_frontend/services/transaction_service.dart';

class TransactionProvider with ChangeNotifier {
  Future<bool> checkout(
      String token, List<CartModel> carts, double totalPrice) async {
    try {
      if (await TransactionService().checkout(token, carts, totalPrice)) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      // ignore: avoid_print
      print(e);
      return false;
    }
  }
}
