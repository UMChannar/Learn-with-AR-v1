import 'package:flutter/material.dart';
import 'package:learn_with_ar_v1/initializer/splashScreen.dart';
import 'package:learn_with_ar_v1/modules/user/user_login.dart';
import 'package:learn_with_ar_v1/tabs/home_screen.dart';
import 'package:learn_with_ar_v1/tabs/tabs_manager.dart';

var customRoutes = <String, WidgetBuilder>{
  SplashScreen.routeName: (context) => const SplashScreen(),
  UserLoginScreen.routeName: (context) => const UserLoginScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  TabsManager.routeName: (context) => const TabsManager(),
};
