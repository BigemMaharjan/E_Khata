class ReportModel {
  static final report = [
    Report(
      daily: "",
      weekly: "",
      monthly: "",
      yearly: "",
    ),
  ];
}

class Report {
  final String daily;
  final String weekly;
  final String monthly;
  final String yearly;

  Report({
    required this.daily, 
    required this.weekly, 
    required this.monthly, 
    required this.yearly});
}
