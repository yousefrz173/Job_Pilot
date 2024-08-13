import 'package:flutter/material.dart';
import '../../../../data/models/userModels/user_models.dart';

class CompanyList extends StatelessWidget {
  final List<Company> companies;

  CompanyList({required this.companies});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: companies.map(
        (company) {
          return ListTile(
            // leading: Image.network(company.profilePhoto ?? ''),
            title: Text(company.name ?? 'Unknown'),
          );
        },
      ).toList(),
    );
  }
}
