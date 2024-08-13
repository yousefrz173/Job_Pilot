import 'package:flutter/material.dart';
import '../../../../data/models/userModels/user_models.dart';

class CustomerList extends StatelessWidget {
  final List<Customer> customers;

  CustomerList({required this.customers});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: customers.map(
        (customer) {
          return ListTile(
            // leading: Image.network(customer.profilePhoto ?? ''),
            title: Text(customer.fullName ?? 'Unknown'),
          );
        },
      ).toList(),
    );
  }
}
