import 'package:flutter/material.dart';
import 'package:flutter_training_cli/infrastructure/theme/theme.dart';

import 'package:get/get.dart';

import 'infrastructure/navigation/navigation.dart';
import 'infrastructure/navigation/routes.dart';

void main() async {
  var initialRoute = await Routes.initialRoute;
  runApp(Main(initialRoute));
}

class Main extends StatelessWidget {
  final String initialRoute;
  const Main(this.initialRoute, {super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData lightTheme = TMDBTheme.getLight();
    final ThemeData darkTheme = TMDBTheme.getDark();

    return GetMaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      initialRoute: initialRoute,
      getPages: Nav.routes,
    );
  }
}
