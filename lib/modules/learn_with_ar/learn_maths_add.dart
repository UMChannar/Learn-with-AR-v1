import 'package:flutter/material.dart';
import 'package:learn_with_ar_v1/custom_widgets/subjects/subject_alphabets_items.dart';
import 'package:learn_with_ar_v1/providers/username_provider.dart';
import 'package:learn_with_ar_v1/tabs/tabs_manager.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

class LearnMathsAdd extends StatefulWidget {
  static const routeName = '/learn-maths-add';
  const LearnMathsAdd({super.key});

  @override
  State<LearnMathsAdd> createState() => _LearnMathsAddState();
}

class _LearnMathsAddState extends State<LearnMathsAdd> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        VideoPlayerController.asset('assets/audio/maths/video/additions.mp4')
          ..initialize().then(
            (_) => setState(() {}),
          );
  }

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
                            "Are you ready to learn about addition in Maths?",
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
                                'Addition\nHow many fingers \ndo you have?',
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
                              'assets/images/math_add.png',
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
                                Wrap(
                                  children: const [
                                    Text(
                                      'Addition is a way to combine numbers together to find the total or the sum. '
                                      'When we add two numbers, we\'re putting them together to see how much we have in total.\n\n',
                                      style: TextStyle(fontSize: 18),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'Example: 3 + 2\n\n',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'If you have 3 toys and someone gives you 2 more toys, you can add them together to find out how many toys you have in total.\n\n',
                                      style: TextStyle(fontSize: 18),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'To do addition, you can use your fingers or objects to help you count. Let\'s use our fingers for this example:\n\n',
                                      style: TextStyle(fontSize: 18),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'Start by holding up three fingers on one hand, and imagine those represent the number 3.\n\n',
                                      style: TextStyle(fontSize: 18),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'Now, hold up two fingers on your other hand, and imagine those represent the number 2.\n\n',
                                      style: TextStyle(fontSize: 18),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'To find the total, start counting from one hand and keep adding one finger at a time from the other hand.\n\n',
                                      style: TextStyle(fontSize: 18),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'As you count, say the numbers out loud: 1, 2, 3, 4, 5.\n\n',
                                      style: TextStyle(fontSize: 18),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'When you\'ve counted all the fingers on both hands, you\'ll reach 5. That\'s the answer!\n\n',
                                      style: TextStyle(fontSize: 18),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'So, 3 + 2 equals 5. You started with 3, added 2 more, and got a total of 5.\n\n',
                                      style: TextStyle(fontSize: 18),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'You can practice addition with different numbers and objects. It\'s a fun way to see how things can come together to make something bigger!\n\n',
                                      style: TextStyle(fontSize: 18),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                Stack(
                                  children: [
                                    _controller.value.isInitialized
                                        ? AspectRatio(
                                            aspectRatio:
                                                _controller.value.aspectRatio,
                                            child: VideoPlayer(_controller),
                                          )
                                        : const Text(
                                            'No Video Source Found',
                                            style: TextStyle(
                                              fontSize: 25,
                                            ),
                                          ),
                                    Positioned(
                                      bottom: 20,
                                      right: 10,
                                      child: FloatingActionButton(
                                        onPressed: () {
                                          setState(() {
                                            _controller.value.isPlaying
                                                ? _controller.pause()
                                                : _controller.play();
                                          });
                                        },
                                        child: Icon(
                                          _controller.value.isPlaying
                                              ? Icons.pause
                                              : Icons.play_arrow,
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
