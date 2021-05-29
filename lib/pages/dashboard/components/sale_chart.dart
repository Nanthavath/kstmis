import 'package:flutter/material.dart';
import 'package:kstmis/styles/constants.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class SaleChart extends StatelessWidget {
  SaleChart({Key? key}) : super(key: key);

  List<SalesData> data = [
    SalesData('Jan', 35),
    SalesData('Feb', 28),
    SalesData('Mar', 34),
    SalesData('Apr', 32),
    SalesData('May', 40),
    SalesData('Jun', 40),
    SalesData('Jul', 40),
    SalesData('Aug', 40),
    SalesData('Sep', 40),
    SalesData('Oct', 40),
    SalesData('Nov', 40),
    SalesData('Dec', 100),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500,
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(color: secondaryColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Sales'),
          Expanded(
            child: SfCartesianChart(

              enableAxisAnimation: true,
              title: ChartTitle(text: 'Sale 2021'),
              primaryXAxis: CategoryAxis(),
              legend: Legend(isVisible: true),
              tooltipBehavior: TooltipBehavior(enable: true),
              series: <ChartSeries<SalesData, String>>[
                LineSeries<SalesData, String>(
                  dataSource: data,
                  xValueMapper: (datum, index) => datum.year,
                  yValueMapper: (datum, index) => datum.sales,
                  name: "Sale",
                  dataLabelSettings: DataLabelSettings(isVisible: true),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
