class Transaction {
  final String title;
  final String date;
  final double amount;

  Transaction({
    required this.title,
    required this.date,
    required this.amount,
  });
}

class Recipient {
  final String name;

  Recipient({required this.name});
}
