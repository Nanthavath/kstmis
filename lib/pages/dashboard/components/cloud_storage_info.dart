import 'package:flutter/material.dart';
import 'package:kstmis/styles/constants.dart';

class ProductStorageInfo {
  final String svgSrc, title, totalStorage;
  final int total;
  final Color color;

  ProductStorageInfo({
    required this.svgSrc,
    required this.title,
    required this.totalStorage,
    required this.total,
    required this.color,
  });
}

List demoMyField = [
  ProductStorageInfo(
    title: "PRODUCTS",
    total: 1328,
    svgSrc: "assets/icons/product.svg",
    totalStorage: "1.9GB",
    color: primaryColor,
  ),
  ProductStorageInfo(
    title: "SALES",
    total: 1328,
    svgSrc: "assets/icons/total_sales.svg",
    totalStorage: "2.9GB",
    color: Color(0xFFFFA113),
  ),
  ProductStorageInfo(
    title: "SUPPLIER",
    total: 1328,
    svgSrc: "assets/icons/supplier.svg",
    totalStorage: "1GB",
    color: Color(0xFFA4CDFF),
  ),
  ProductStorageInfo(
    title: "Documents",
    total: 5328,
    svgSrc: "assets/icons/drop_box.svg",
    totalStorage: "7.3GB",
    color: Color(0xFF007EE5),
  ),
];
