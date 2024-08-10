import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/core/app_export.dart';

import 'controller/wallet_controller.dart';

class WalletPage extends GetWidget<WalletController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Wallet'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Debit Card
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(
                  colors: [Colors.blueAccent, Colors.lightBlue],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Text(
                      'Debit Card',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 60,
                    left: 20,
                    child: Obx(() => Text(
                          controller.cardNumber.value,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            letterSpacing: 2.0,
                          ),
                        )),
                  ),
                  Positioned(
                    bottom: 40,
                    left: 20,
                    child: Obx(() => Text(
                          controller.cardHolder.value,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        )),
                  ),
                  Positioned(
                    bottom: 40,
                    right: 20,
                    child: Obx(() => Text(
                          controller.expiryDate.value,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        )),
                  ),
                  // Artistic Element
                  Positioned(
                    bottom: -20,
                    right: -20,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white24,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -10,
                    right: -10,
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white38,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            // Balance Info
            Obx(() => Text(
                  'Current Balance: \$${controller.balance.value.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                )),
            SizedBox(height: 20),
            // Recipient Account Number Input
            Text(
              'Recipient Account Number',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: controller.recipientAccountController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter account number',
              ),
              textInputAction: TextInputAction.next,
            ),
            SizedBox(height: 20),
            // Payment Amount Input
            TextField(
              controller: controller.paymentAmountController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Payment Amount',
              ),
            ),
            SizedBox(height: 20),
            // Make Payment Button
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor:
                      Color.fromARGB(255, 4, 23, 130), // Text color
                  padding:
                      EdgeInsets.symmetric(vertical: 26.0, horizontal: 32.0),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(12.0), // Rounded corners
                  ),
                  elevation: 8.0, // Shadow elevation
                ),
                onPressed: () {
                  controller.makePayment();
                },
                child: Text(
                  'Make Payment',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Transactions
            Text(
              'Recent Transactions',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // Transactions List
            Obx(() => ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.transactions.length,
                  itemBuilder: (context, index) {
                    final transaction =
                        controller.transactions.reversed.toList()[index];
                    return ListTile(
                      title: Text(transaction.title),
                      subtitle: Text(transaction.date),
                      trailing: Text(
                        transaction.amount > 0
                            ? '+\$${transaction.amount.toStringAsFixed(2)}'
                            : '-\$${transaction.amount.abs().toStringAsFixed(2)}',
                        style: TextStyle(
                          color: transaction.amount > 0
                              ? Colors.green
                              : Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
