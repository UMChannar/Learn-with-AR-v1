import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learn_with_ar_v1/initializer/splashScreen.dart';
import 'package:learn_with_ar_v1/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
      ],
    );
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Learn with AR",
      theme: ThemeData(
        primarySwatch: Colors.purple,
        scaffoldBackgroundColor: Colors.white,
        textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              titleMedium: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              titleSmall: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              bodyLarge: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              bodyMedium: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              bodySmall: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      initialRoute: SplashScreen.routeName,
      routes: customRoutes,
    );
  }
}
