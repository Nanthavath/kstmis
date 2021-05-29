import 'package:flutter/material.dart';

class ProvinceData extends StatelessWidget {
  const ProvinceData({Key? key,required this.provinceData}) : super(key: key);
  final List provinceData;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Sale Province'),
          Expanded(
            child: SingleChildScrollView(
              child: DataTable(
                columns: [
                  DataColumn(
                    label: Text('No')
                  ),
                  DataColumn(
                      label: Text('Province')
                  ),
                  DataColumn(
                      label: Text('QTY')
                  ),
                  DataColumn(
                      label: Text('Total')
                  ),
                ],
                rows: List.generate(provinceData.length, (index) {
                  return DataRow(
                    cells: [
                      DataCell(Text('${index+1}')),
                      DataCell(Text('${provinceData[index]}')),
                      DataCell(Text('100')),
                      DataCell(Text('10,000K')),
                    ]
                  );
                }),
              ),
            ),

          ),
        ],
      ),
    );
  }
}
