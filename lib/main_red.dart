import 'package:flutter/material.dart';

import 'flavor_config.dart';
import 'main_common.dart';
void main() {
  // Inject our own configurations
  runApp(MyApp(
      FlavorConfig()
        ..appTitle = "Red"
        ..apiEndpoint = {
          Endpoints.items: "random.api.dev/items",
          Endpoints.details: "random.api.dev/item"
        }
        ..imageLocation = "assets/app_icons/red.jpeg"
        ..theme = ThemeData.light().copyWith(
          primaryColor: Color.fromARGB(255, 190, 51, 169),
          appBarTheme: ThemeData.light().appBarTheme.copyWith(
            backgroundColor: Color.fromARGB(255, 136, 26, 26),
          ),
        )
  ));

}
