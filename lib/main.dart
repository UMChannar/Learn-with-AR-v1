import 'package:flutter/material.dart';
import 'package:learn_with_ar_v1/initializer/myApp.dart';
import 'package:learn_with_ar_v1/providers/username_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UsernameProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
