import 'package:flutter/material.dart';
import 'package:kstmis/models/product.dart';
import 'package:kstmis/responsive.dart';
import 'package:kstmis/services/services.dart';
import 'package:kstmis/styles/constants.dart';

import 'cloud_storage_info.dart';
import 'total_info_card.dart';

class CurrentTotal extends StatefulWidget {
  const CurrentTotal({Key? key}) : super(key: key);

  @override
  _CurrentTotalState createState() => _CurrentTotalState();
}

class _CurrentTotalState extends State<CurrentTotal> {
  List<Product> data = [];
  Product? product;
  int total=0;

  Services services = Services();

  @override
  void initState() {
    services.loadJsonDataProduct().then((value) {
      setState(() {
        value.forEach((elm) {
          data.add(Product.fromJson(elm));
        });
        for(int i=0;i<data.length;i++){
          print(data[i].name);
          total+=int.parse(data[i].total!);
        }
        print("total=$total");
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total',
              style: Theme.of(context).textTheme.subtitle1,
            )
          ],
        ),
        SizedBox(height: defaultPadding),
        Responsive(
          mobile: TotalInfoCardGridView(
            childAspectRatio: _size.width < 650 ? 1.1 : 1.4,
            crossAxisCount: _size.width < 650 ? 2 : 4,
          ),
          tablet: TotalInfoCardGridView(),
          desktop: TotalInfoCardGridView(
            childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
          ),
        ),
      ],
    );
  }
}

class TotalInfoCardGridView extends StatelessWidget {
  final int? crossAxisCount;
  final double? childAspectRatio;

  const TotalInfoCardGridView(
      {Key? key, this.childAspectRatio = 1, this.crossAxisCount = 4})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyField.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount!,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio!,
      ),
      itemBuilder: (context, index) => TotalInfoCard(
        info: demoMyField[index],
      ),
    );
  }
}
