class TransactionsModel {
  final String title, date, amount;
  final bool isWithdrawal;

  const TransactionsModel(
      {required this.title,
      required this.date,
      required this.amount,
      required this.isWithdrawal});
}
