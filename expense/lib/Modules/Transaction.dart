class Transaction{
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final String? description;

   Transaction({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
    this.description,
  });
}