import 'package:flutter/material.dart';

import 'controllers/MenuController.dart';
import 'pages/dashboard/dashboard.dart';
import 'package:provider/provider.dart';

class RoutePage extends StatelessWidget {
  const RoutePage({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Dashboard(),
    );
  }
}

