import 'package:flutter/material.dart';
import 'package:kstmis/controllers/MenuController.dart';
import 'package:kstmis/responsive.dart';
import 'package:kstmis/styles/constants.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  const Header({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (!Responsive.isDesktop(context))
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: context.read<MenuController>().controlMenu,
            ),
          if (!Responsive.isMobile(context))
            Text(
              '$title',
              style: Theme.of(context).textTheme.headline6,
            ),
          if (!Responsive.isMobile(context))
            Spacer(
              flex: Responsive.isDesktop(context) ? 2 : 1,
            ),
          ProfileCard(),
        ],
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(defaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile_1.jpg"),
          ),
          if (!Responsive.isMobile(context))
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: Text("John Snow"),
            ),
        ],
      ),
    );
  }
}
