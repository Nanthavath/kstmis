import 'package:flutter/material.dart';
import 'package:kstmis/responsive.dart';
import 'package:kstmis/styles/constants.dart';

import 'components/current_active.dart';
import 'components/current_total.dart';
import '../home/header.dart';
import 'components/list_product.dart';
import 'components/province_chart.dart';
import 'components/province_data.dart';
import 'components/sale_chart.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);

  List<String> province = [
    "ນະຄອນຫຼວງວຽງຈັນ",
    "ແຂວງຜົ້ງສາລີ",
    "ແຂວງູຫຼວງນ້ຳທາ",
    "ແຂວງູອຸດົມໄຊ",
    "ແຂວງບໍ່ແກ້ວ",
    "ແຂວງູຫຼວງພະບາງ",
    "ແຂວງຫົວພັນ",
    "ແຂວງຫົວພັນ",
    "ແຂວງຊຽງຂວາງ",
    "ແຂວງວຽງຈັນ",
    "ແຂວງບໍລິຄຳໄຊ",
    "ແຂວງູຄຳມ່ວນ",
    "ແຂວງສະຫວັນນະເຂດ",
    "ແຂວງສາລະວັນ",
    "ແຂວງເຊກອງ",
    "ແຂວງຈຳປາສັກ",
    "ແຂວງອັດຕະປື",
    "ແຂວງໄຊສົມບູນ",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              CurrentTotal(),
              SizedBox(height: defaultPadding),
              ///////////////////////////
              Row(
                children: [
                  Expanded(
                    child: SaleChart(),
                  ),
                  if (!Responsive.isMobile(context))
                    Container(
                      width: defaultPadding,
                    ),
                  if (!Responsive.isMobile(context))
                    Expanded(child: ListProduct())
                ],
              ),
              if (Responsive.isMobile(context))
                Container(
                  height: defaultPadding,
                ),
              if (Responsive.isMobile(context)) ListProduct(),

              SizedBox(height: defaultPadding),
              Container(
                height: 500,
                width: double.infinity,
                padding: EdgeInsets.all(defaultPadding),
                decoration: BoxDecoration(
                  color: secondaryColor,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: ProvinceData(
                        provinceData: province,
                      ),
                    ),
                    if(!Responsive.isMobile(context))
                      Expanded(
                        child: ProvinceChart(),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
