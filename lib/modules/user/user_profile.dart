import 'package:flutter/material.dart';
import 'package:learn_with_ar_v1/modules/user/user_login.dart';
import 'package:learn_with_ar_v1/providers/username_provider.dart';
import 'package:learn_with_ar_v1/tabs/tabs_manager.dart';
import 'package:provider/provider.dart';

class UserProfileScreen extends StatefulWidget {
  static const routeName = '/user-profile';
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  late UsernameProvider _usernameProvider;

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
        UserProfileScreen.routeName,
        (route) => false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    _usernameProvider = Provider.of<UsernameProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
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
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
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
                              hintText: _usernameProvider.username,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(70),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
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
                                      Colors.green,
                                    ),
                                  ),
                                  onPressed: () => _saveUsername(context),
                                  child: Text(
                                    'Update',
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ),
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
                                      Colors.red,
                                    ),
                                  ),
                                  onPressed: () async {
                                    await _usernameProvider.deleteUsername();
                                    Navigator.pushReplacementNamed(
                                      context,
                                      UserLoginScreen.routeName,
                                    );
                                  },
                                  child: Text(
                                    'Logout',
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 10,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                        context,
                        TabsManager.routeName,
                      );
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
