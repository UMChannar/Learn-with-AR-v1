import 'package:flutter/material.dart';
import 'package:learn_with_ar_v1/custom_widgets/lwr/lwr_ar_items.dart';
import 'package:learn_with_ar_v1/custom_widgets/lwr/lwr_middleman_items.dart';
import 'package:learn_with_ar_v1/initializer/splashScreen.dart';
import 'package:learn_with_ar_v1/modules/learn_with_ar/learn_animals.dart';
import 'package:learn_with_ar_v1/modules/learn_with_ar/learn_birds.dart';
import 'package:learn_with_ar_v1/modules/learn_with_ar/learn_english.dart';
import 'package:learn_with_ar_v1/modules/learn_with_ar/learn_maths.dart';
import 'package:learn_with_ar_v1/modules/learn_with_ar/learn_maths_add.dart';
import 'package:learn_with_ar_v1/modules/learn_with_ar/learn_maths_digits.dart';
import 'package:learn_with_ar_v1/modules/learn_with_ar/learn_maths_shapes.dart';
import 'package:learn_with_ar_v1/modules/learn_with_ar/learn_urdu.dart';
import 'package:learn_with_ar_v1/modules/user/user_login.dart';
import 'package:learn_with_ar_v1/modules/user/user_profile.dart';
import 'package:learn_with_ar_v1/modules/learn_with_ar/home_screen.dart';
import 'package:learn_with_ar_v1/tabs/tabs_manager.dart';

var customRoutes = <String, WidgetBuilder>{
  SplashScreen.routeName: (context) => const SplashScreen(),
  UserLoginScreen.routeName: (context) => const UserLoginScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  TabsManager.routeName: (context) => const TabsManager(),
  UserProfileScreen.routeName: (context) => const UserProfileScreen(),
  LearnEnglish.routeName: (context) => const LearnEnglish(),
  LwrARScreen.routeName: (context) => const LwrARScreen(),
  LearnUrdu.routeName: (context) => const LearnUrdu(),
  LearnAnimals.routeName: (context) => const LearnAnimals(),
  LearnBirds.routeName: (context) => const LearnBirds(),
  LearnMaths.routeName: (context) => const LearnMaths(),
  LearnMathsShapes.routeName: (context) => const LearnMathsShapes(),
  LearnMathsDigits.routeName: (context) => const LearnMathsDigits(),
  LearnMathsAdd.routeName: (context) => const LearnMathsAdd(),
};
