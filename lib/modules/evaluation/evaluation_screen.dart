import 'package:flutter/material.dart';
import 'package:learn_with_ar_v1/custom_widgets/evaluation/quiz_AB_items.dart';
import 'package:learn_with_ar_v1/custom_widgets/evaluation/quiz_items.dart';
import 'package:learn_with_ar_v1/custom_widgets/subjects/subject_items.dart';
import 'package:learn_with_ar_v1/data/questions.dart';
import 'package:learn_with_ar_v1/modules/user/user_profile.dart';
import 'package:learn_with_ar_v1/providers/username_provider.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';

class EvaluationScreen extends StatelessWidget {
  const EvaluationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    late UsernameProvider _usernameProvider;
    _usernameProvider = Provider.of<UsernameProvider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        body: Container(
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
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Hello little'),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "Mr. ${_usernameProvider.username}",
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
                                  fontSize: 26,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            UserProfileScreen.routeName,
                          );
                        },
                        icon: const Icon(
                          Icons.person,
                          color: Colors.black,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
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
                              'Now its time \nto Evaluate \nyour learning',
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
                            'assets/images/evaluation.png',
                          ),
                          height: 150,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      subjectItems(
                        'assets/images/english.png',
                        () {
                          // Navigator.pushNamed(
                          //   context,
                          //   LearnEnglish.routeName,
                          // );
                          Get.to(() => QuizItems(subject: englishQuestions));
                        },
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      subjectItems(
                        'assets/images/urdu.png',
                        () {
                          // Get.toNamed(
                          //   LearnUrdu.routeName,
                          // );
                          Get.to(() => QuizItems(subject: urduQuestions));
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      subjectItems(
                        'assets/images/maths.png',
                        () {
                          // Get.toNamed(
                          //   LearnMaths.routeName,
                          // );
                          Get.to(() => QuizItems(subject: mathQuestions));
                        },
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      subjectItems(
                        'assets/images/animals.png',
                        () {
                          // Get.toNamed(
                          //   LearnAnimals.routeName,
                          // );
                          Get.to(() => QuizABItems(subject: animalsQuestions));
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      subjectItems(
                        'assets/images/bird.png',
                        () {
                          // Get.toNamed(
                          //   LearnBirds.routeName,
                          // );
                          Get.to(() => QuizABItems(subject: birdsQuestions));
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
