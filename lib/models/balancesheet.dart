class BalanceSheetModel {
  static final balanceSheet = [
    BalanceSheet(
      date: "20/12/2021",
      from: "SB",
      to: "US",
      debit: 1000,
      credit: 1000,
      debitTotal: 1000,
      creditTotal: 1000,
    ),
  ];
}

class BalanceSheet {
  final String date;
  final String from;
  final String to;
  final num debit;
  final num credit;
  final num debitTotal;
  final num creditTotal;

  BalanceSheet(
      {required this.date,
      required this.from,
      required this.to,
      required this.debit,
      required this.credit,
      required this.debitTotal,
      required this.creditTotal});
}
