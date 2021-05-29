import 'package:flutter/material.dart';
import 'package:kstmis/styles/constants.dart';

class ListProduct extends StatelessWidget {
  const ListProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      padding: EdgeInsets.all(defaultPadding),
      // margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(color: secondaryColor),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Products',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(
              width: double.infinity,
              child: DataTable(columns: [
                DataColumn(
                  label: Text('Name'),
                ),
                DataColumn(
                  label: Text('QTY'),
                ),
                DataColumn(
                  label: Text('Total'),
                )
              ], rows: List.generate(20, (index) => productDataRow())),
            ),
          ],
        ),
      ),
    );
  }
  DataRow productDataRow() {
    return DataRow(cells: [
      DataCell(
        Text('Product Name'),
      ),
      DataCell(
        Text('10'),
      ),
      DataCell(
        Text('10,000'),
      ),
    ]);
  }
}
