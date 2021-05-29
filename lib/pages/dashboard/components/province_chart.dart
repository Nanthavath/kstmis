import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'sale_chart.dart';

class ProvinceChart extends StatelessWidget {
  const ProvinceChart({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        primaryYAxis: NumericAxis(),
        series: <ChartSeries>[
          ColumnSeries<ProvinceDataChart,String>(
            dataSource: getColumnData(),
            xValueMapper:(ProvinceDataChart data, index) => data.year,
            yValueMapper: (ProvinceDataChart data, index) => data.sales,
          )
        ],
      ),
    );
  }
}

class ProvinceDataChart{
  final String year;
  final double sales;
  ProvinceDataChart(this.year,this.sales);
}

dynamic getColumnData(){
  List<ProvinceDataChart>columnData=<ProvinceDataChart>[
    ProvinceDataChart('Jan', 35),
    ProvinceDataChart('Feb', 28),
    ProvinceDataChart('Mar', 34),
    ProvinceDataChart('Apr', 32),
    ProvinceDataChart('May', 40),
    ProvinceDataChart('Jun', 40),
    ProvinceDataChart('Jul', 40),
    ProvinceDataChart('Aug', 40),
    ProvinceDataChart('Sep', 40),
    ProvinceDataChart('Oct', 40),
    ProvinceDataChart('Nov', 40),
    ProvinceDataChart('Dec', 100),
  ];
  return columnData;
}