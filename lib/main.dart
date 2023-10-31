import 'package:fitness_app/constants/theme.dart';
import 'package:fitness_app/utils/size_config.dart';
import 'package:fitness_app/views/pages/Calander/calander_screen.dart';
import 'package:fitness_app/views/pages/Home/home_screen.dart';
import 'package:fitness_app/views/pages/Moment%20Library/moment_library.dart';
import 'package:fitness_app/views/pages/Social/social_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);

            return MaterialApp(
              theme: AppTheme().getTheme(),
              debugShowCheckedModeBanner: false,
              home: const CalanderScreen(),
            );
          },
        );
      },
    );
  }
}
