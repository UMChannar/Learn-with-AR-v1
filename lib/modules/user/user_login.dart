import 'package:flutter/material.dart';
import 'package:learn_with_ar_v1/providers/username_provider.dart';
import 'package:learn_with_ar_v1/tabs/tabs_manager.dart';
import 'package:provider/provider.dart';

class UserLoginScreen extends StatefulWidget {
  static String routeName = '/userLoginScreen';
  const UserLoginScreen({super.key});

  @override
  State<UserLoginScreen> createState() => _UserLoginScreenState();
}

class _UserLoginScreenState extends State<UserLoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();

  String? validateInput(String? value) {
    const pattern = r'[!@#$%^&*(){}[\]|/.~,]';
    final regex = RegExp(pattern);

    if (value != null && regex.hasMatch(value)) {
      return 'Invalid input: Special characters are not allowed.';
    } else if (value == null || value.isEmpty) {
      return 'Please enter your nickname';
    }
    return null;
  }

  @override
  void dispose() {
    super.dispose();
    _usernameController.dispose();
  }

  void _saveUsername(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      final usernameProvider =
          Provider.of<UsernameProvider>(context, listen: false);
      await usernameProvider.saveUsername(_usernameController.text);
      Navigator.pushNamedAndRemoveUntil(
        context,
        TabsManager.routeName,
        (route) => false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white, Colors.pink[200]!],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: Image(
                          image: AssetImage(
                            'assets/images/logo.png',
                          ),
                        ),
                      ),
                      Text(
                        'Enter Your Nickname',
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontSize: 28,
                                  color: Colors.lightBlue,
                                ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _usernameController,
                        validator: validateInput,
                        decoration: InputDecoration(
                          hintText: 'Nickname',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(70),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(70),
                              ),
                            ),
                            padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(
                                horizontal: 50,
                                vertical: 15,
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all(
                              Colors.lightBlue,
                            ),
                          ),
                          onPressed: () => _saveUsername(context),
                          child: Text(
                            'Lets Go',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
