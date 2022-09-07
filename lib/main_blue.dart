import 'package:flutter/material.dart';

import 'flavor_config.dart';
import 'main_common.dart';

void main() {
  // Inject our own configurations
  runApp(MyApp(
      FlavorConfig()
        ..appTitle = "Blue"
        ..apiEndpoint = {
          Endpoints.items: "random.api.dev/items",
          Endpoints.details: "random.api.dev/item"
        }
        ..imageLocation = "assets/app_icons/blue.jpeg"
        ..theme = ThemeData.dark().copyWith(
          primaryColor: Color.fromARGB(255, 20, 60, 99),
          appBarTheme: ThemeData.dark().appBarTheme.copyWith(
            backgroundColor: Color.fromARGB(255, 0, 17, 208),
          ),
        )
  ));

}
