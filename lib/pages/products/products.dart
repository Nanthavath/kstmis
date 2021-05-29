import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kstmis/pages/home/header.dart';
import 'package:kstmis/styles/constants.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          searchField(context),
          Expanded(
            child: SingleChildScrollView(
              child: DataTable(
                columns: [
                  DataColumn(label: Text('NO')),
                  DataColumn(label: Text('Name')),
                  DataColumn(label: Text('Total')),
                  DataColumn(label: Text('Supplier')),
                ],
                rows: List.generate(20, (index) {
                  return DataRow(cells: [
                    DataCell(Text('${index + 1}')),
                    DataCell(Text('Name')),
                    DataCell(Text('2,000')),
                    DataCell(Text('Supplier')),
                  ]);
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }

  searchField(BuildContext context) {
    return Container(
      width: 500,
      padding: EdgeInsets.all(defaultPadding),
      child: TextField(
        decoration: InputDecoration(
            isDense: true,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white54),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white54),
            ),
            hintText: 'Search...',
            prefixIcon: Icon(Icons.search)),
      ),
    );
  }
}
