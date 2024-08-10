import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/wallet_model.dart';

class WalletController extends GetxController {
  var balance = 1000.0.obs;
  var cardNumber = '1234 5678 9012 3456'.obs;
  var cardHolder = 'John Doe'.obs;
  var expiryDate = '12/24'.obs;
  var recipientAccountNumber = ''.obs;
  var paymentAmount = 0.0.obs;
  var transactions = <Transaction>[].obs;

  // TextEditingControllers
  final TextEditingController recipientAccountController =
      TextEditingController();
  final TextEditingController paymentAmountController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    // Update observables from TextEditingControllers
    recipientAccountController.addListener(() {
      recipientAccountNumber.value = recipientAccountController.text;
    });

    paymentAmountController.addListener(() {
      paymentAmount.value =
          double.tryParse(paymentAmountController.text) ?? 0.0;
    });
  }

  @override
  void onClose() {
    // Dispose controllers when the controller is closed
    recipientAccountController.dispose();
    paymentAmountController.dispose();
    super.onClose();
  }

  void makePayment() {
    if (paymentAmount.value > 0 && paymentAmount.value <= balance.value) {
      balance.value -= paymentAmount.value;
      transactions.add(Transaction(
        title: 'Payment to ${recipientAccountNumber.value}',
        amount: -paymentAmount.value,
        date: DateTime.now().toString(),
      ));
      recipientAccountController.clear();
      paymentAmountController.clear();
    } else {
      // Handle insufficient balance or invalid amount
      Get.snackbar(
        'Payment Error',
        'Insufficient balance or invalid payment amount.',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.indigo,
        colorText: Colors.white,
      );
    }
  }
}
