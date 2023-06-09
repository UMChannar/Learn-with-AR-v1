import 'package:flutter/material.dart';
import 'package:learn_with_ar_v1/modules/user/user_login.dart';
import 'package:learn_with_ar_v1/providers/username_provider.dart';
import 'package:learn_with_ar_v1/tabs/tabs_manager.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = '/splashScreen';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
    _animation = Tween<Offset>(
      begin: const Offset(0.0, 1.0),
      end: const Offset(0.0, 0.0),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
    _controller.forward();
    _controller.addStatusListener(
      (status) async {
        if (status == AnimationStatus.completed) {
          final usernameProvider = Provider.of<UsernameProvider>(
            context,
            listen: false,
          );
          await usernameProvider.loadUsername();
          if (usernameProvider.username.isEmpty) {
            Navigator.pushNamedAndRemoveUntil(
              context,
              UserLoginScreen.routeName,
              (route) => false,
            );
          } else {
            Navigator.pushNamedAndRemoveUntil(
              context,
              TabsManager.routeName,
              (route) => false,
            );
          }
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlideTransition(
        position: _animation,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png'),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
