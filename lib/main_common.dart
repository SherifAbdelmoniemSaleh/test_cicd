import 'package:flutter/material.dart';
import 'flavor_config.dart';

// var config = FlavorConfig()
// void mainCommon() {
//   // config = config
//
//   // runApp( config);
// }
class MyApp extends StatelessWidget {
  var config = FlavorConfig();

  MyApp(this.config ,{Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return _buildApp(config.appTitle! , config.imageLocation!);
  }

  Widget _buildApp(String appName , String imageLocation){
    return MaterialApp(
      title: appName,
      theme: ThemeData(
        primaryColor: Color(0xFF43a047),
        accentColor: Color(0xFFffcc00),
        primaryColorBrightness: Brightness.light,
      ),
      home:Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                width: 300.0,
                height: 100.0,
                child: Texture(textureId: 0),
              ),
              Container(
                width: 300.0,
                height: 60.0,
                color: Colors.grey,
                child: Center(
                  child: Text(
                    appName,
                    key: const ValueKey<String>('summary'),
                  ),
                ),
              ),
              Container(
                  width: 200.0,
                  height: 200.0,
                  child: Image.asset(imageLocation , width: 200.0 , height: 200.0,)
              )

            ],
          ),
        ),
      ),
    );
  }
}


