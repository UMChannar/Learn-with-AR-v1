import 'package:flutter/material.dart';
import 'package:learn_with_ar_v1/custom_widgets/subjects/subject_alphabets_items.dart';
import 'package:learn_with_ar_v1/data/subjects_data.dart';
import 'package:learn_with_ar_v1/providers/username_provider.dart';
import 'package:learn_with_ar_v1/tabs/tabs_manager.dart';
import 'package:provider/provider.dart';

class LearnMathsDigits extends StatefulWidget {
  static const routeName = '/learn-maths-digits';
  const LearnMathsDigits({super.key});

  @override
  State<LearnMathsDigits> createState() => _LearnMathsDigitsState();
}

class _LearnMathsDigitsState extends State<LearnMathsDigits> {
  @override
  Widget build(BuildContext context) {
    late UsernameProvider _usernameProvider;
    _usernameProvider = Provider.of<UsernameProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: Stack(
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Hello ${_usernameProvider.username}",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                '\u{1F44B}', // Waving hand emoji
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Are you ready to learn about Birds?",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Center(
                              child: Text(
                                'Digits are the \nnumbers from \n0 to 9.',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontSize: 24,
                                    ),
                              ),
                            ),
                          ),
                          const Image(
                            image: AssetImage(
                              'assets/images/maths_digits.png',
                            ),
                            height: 150,
                            width: 150,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.white, Colors.pink[200]!],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                for (final data in mathsDigitsData)
                                  EnglishAlphabetItems(
                                    title1: data['title1'],
                                    onTap1: data['onTap1'],
                                    color1: data['color1'],
                                    audio1: data['audio1'],
                                    title2: data['title2'],
                                    onTap2: data['onTap2'],
                                    color2: data['color2'],
                                    audio2: data['audio2'],
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
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
    );
  }
}
