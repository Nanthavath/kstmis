import 'package:flutter/material.dart';
import 'package:kstmis/controllers/MenuController.dart';
import 'package:kstmis/controllers/PageController.dart';
import 'package:kstmis/pages/home/header.dart';
import 'package:kstmis/pages/dashboard/dashboard.dart';

import '../../routes.dart';
import 'components/slide_menu.dart';
import 'package:kstmis/responsive.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PageControllers(),
      child: Consumer<PageControllers>(
        builder: (context, page, child) => Scaffold(
          key: context.read<MenuController>().scaffoldKey,
          drawer: SlideMenu(
            pageIndex: page,
          ),
          body: SafeArea(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Responsive.isDesktop(context))
                  Expanded(
                    child: SlideMenu(
                      pageIndex: page,
                    ),
                  ),

                Expanded(
                  flex: 5,
                  child:Column(
                    children: [
                      Header(title:page.currentTitle,),
                      Expanded(child: page.currentPage)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
