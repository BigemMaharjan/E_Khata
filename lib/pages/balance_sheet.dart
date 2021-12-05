// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BalanceSheetPage extends StatefulWidget {
  const BalanceSheetPage({Key? key}) : super(key: key);

  @override
  _BalanceSheetPageState createState() => _BalanceSheetPageState();
}

class _BalanceSheetPageState extends State<BalanceSheetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E_Khata'),
      ),
      body: ListView(
        padding: EdgeInsets.only(right: 5.0, left: 5.0, top: 10.0),
        children: [
          PaginatedDataTable(
              header: Text("Balance Sheet"),
              rowsPerPage: 10,
              columns: [
                DataColumn(label: Text('Debit')),
                DataColumn(label: Text('Credit')),
                DataColumn(label: Text('Header C')),
                DataColumn(label: Text('Header D')),
              ],
              source: _DataSource(context)),
        ],
      ),
    );
  }
}

class _Row {
  _Row(
    this.valueA,
    this.valueB,
    this.valueC,
    this.valueD,
  );

  final String valueA;
  final String valueB;
  final String valueC;
  final int valueD;

  bool selected = false;
}

class _DataSource extends DataTableSource {
  _DataSource(this.context) {
    _rows = <_Row>[
      _Row('Cell A1', 'CellB1', 'CellC1', 1),
      _Row('Cell A2', 'CellB2', 'CellC2', 2),
      _Row('Cell A3', 'CellB3', 'CellC3', 3),
      _Row('Cell A4', 'CellB4', 'CellC4', 4),
      _Row('Cell A4', 'CellB4', 'CellC4', 5),
      _Row('Cell A4', 'CellB4', 'CellC4', 6),
      _Row('Cell A4', 'CellB4', 'CellC4', 7),
      _Row('Cell A4', 'CellB4', 'CellC4', 8),
      _Row('Cell A4', 'CellB4', 'CellC4', 4),
      _Row('Cell A4', 'CellB4', 'CellC4', 10),
      _Row('Cell A4', 'CellB4', 'CellC4', 11),
    ];
  }

  final BuildContext context;
  List<_Row>? _rows;

  int _selectedCount = 0;

  @override
  DataRow? getRow(int index) {
    assert(index >= 0);
    if (index >= _rows!.length) return null;
    final row = _rows![index];
    return DataRow.byIndex(
      index: index,
      selected: row.selected,
      onSelectChanged: (value) {
        if (row.selected != value) {
          _selectedCount += value! ? 1 : -1;
          assert(_selectedCount >= 0);
          row.selected = value;
          notifyListeners();
        }
      },
      cells: [
        DataCell(Text(row.valueA)),
        DataCell(Text(row.valueB)),
        DataCell(Text(row.valueC)),
        DataCell(Text(row.valueD.toString())),
      ],
    );
  }

  @override
  int get rowCount => _rows!.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => _selectedCount;
}
