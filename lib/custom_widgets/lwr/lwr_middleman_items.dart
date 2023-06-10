import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_with_ar_v1/custom_widgets/lwr/lwr_ar_items.dart';
import 'package:learn_with_ar_v1/data/subjects_data.dart';

class LwrARScreen extends StatelessWidget {
  static String routeName = '/lwrARScreen';

  const LwrARScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments as LwrARScreenArguments;

    return LwrARItems(
      args.words,
      args.sound,
      args.model,
      args.pageTitle,
    );
  }
}
