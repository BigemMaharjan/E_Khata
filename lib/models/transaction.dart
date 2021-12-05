class TransactionModel {
  static final khata = [
    Transact(
      id: 1,
      from: "SB",
      to: "US",
      date: "20/12/2021",
      itemName: "Furniture",
      itemRate: 100,
      itemQuantity: 10,
      total: 1000,
      moneyReceived: 1000,
      moneyDue: 0,
      change: 0,
      netAmount: 1000,
    ),
  ];
}

class Transact {
  final int id;
  final String from;
  final String to;
  final String date;
  final String itemName;
  final num itemRate;
  final int itemQuantity;
  final num total;
  final num moneyReceived;
  final num moneyDue;
  final num change;
  final num netAmount;

  Transact({
    required this.id,
    required this.from,
    required this.to,
    required this.date,
    required this.itemName,
    required this.itemRate,
    required this.itemQuantity,
    required this.total,
    required this.moneyReceived,
    required this.moneyDue,
    required this.change,
    required this.netAmount,
  });
}
