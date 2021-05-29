import 'package:flutter/material.dart';
import 'package:kstmis/pages/dashboard/dashboard.dart';
import 'package:kstmis/pages/products/products.dart';

class PageControllers extends ChangeNotifier {
  int _currentPage = 0;
  List<Widget> _page = [
    Dashboard(),
    Products(),
  ];
  List<String>title=["DASHBOARD","PRODUCTS"];

  set currentTab(int tab) {
    this._currentPage = tab;
    notifyListeners();
  }

  int get currentTab => this._currentPage;

  get currentPage {
    return this._page[this._currentPage];
  }
  get currentTitle=>this.title[this.currentTab];
}
