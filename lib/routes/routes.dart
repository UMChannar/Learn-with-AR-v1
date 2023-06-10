import 'package:flutter/material.dart';
import 'package:learn_with_ar_v1/custom_widgets/lwr/lwr_middleman_items.dart';
import 'package:learn_with_ar_v1/initializer/splashScreen.dart';
import 'package:learn_with_ar_v1/modules/learn_with_ar/learn_english.dart';
import 'package:learn_with_ar_v1/modules/user/user_login.dart';
import 'package:learn_with_ar_v1/modules/user/user_profile.dart';
import 'package:learn_with_ar_v1/tabs/home_screen.dart';
import 'package:learn_with_ar_v1/tabs/tabs_manager.dart';

var customRoutes = <String, WidgetBuilder>{
  SplashScreen.routeName: (context) => const SplashScreen(),
  UserLoginScreen.routeName: (context) => const UserLoginScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  TabsManager.routeName: (context) => const TabsManager(),
  UserProfileScreen.routeName: (context) => const UserProfileScreen(),
  LearnEnglish.routeName: (context) => const LearnEnglish(),
  LwrARScreen.routeName: (context) => const LwrARScreen(),
};
