import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kstmis/controllers/PageController.dart';
import 'package:kstmis/responsive.dart';

// ignore: must_be_immutable
class SlideMenu extends StatelessWidget {
  SlideMenu({Key? key, required this.pageIndex}) : super(key: key);
  final PageControllers pageIndex;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: FlutterLogo(
                size: 100,
              ),
            ),
            DrawerListTile(
              title: 'DASHBOARD',
              svgSrc: 'assets/icons/dashboard.svg',
              color: pageIndex.currentTab == 0 ? Colors.white : Colors.white54,
              onTap: () {
                if (!Responsive.isDesktop(context)) {
                  Navigator.pop(context);
                }
                pageIndex.currentTab = 0;
              },
            ),
            DrawerListTile(
              title: 'PRODUCTS',
              svgSrc: 'assets/icons/product.svg',
              color: pageIndex.currentTab == 1 ? Colors.white : Colors.white54,
              onTap: () {
                if (!Responsive.isDesktop(context)) {
                  Navigator.pop(context);
                }
                pageIndex.currentTab = 1;
              },
            ),
            DrawerListTile(
              title: 'SALE',
              svgSrc: 'assets/icons/total_sales.svg',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final String? title;
  final String? svgSrc;
  final VoidCallback? onTap;
  final Color? color;

  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.onTap,
    this.color = Colors.white54,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc!,
        color: color,
        height: 20,
      ),
      title: Text(
        title!,
        style: TextStyle(color: color),
      ),
    );
  }
}
