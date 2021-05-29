import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kstmis/controllers/MenuController.dart';
import 'package:kstmis/pages/home/home.dart';
import 'package:kstmis/styles/constants.dart';
import 'package:provider/provider.dart';

import 'controllers/PageController.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KSTMIS',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuController(),
          ),
          ChangeNotifierProvider(
            create: (context) => PageControllers(),
          ),
        ],
        child: Home(),
      ),
    );
  }
}
