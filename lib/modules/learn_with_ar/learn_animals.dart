import 'package:flutter/material.dart';
import 'package:learn_with_ar_v1/custom_widgets/subjects/subject_alphabets_items.dart';
import 'package:learn_with_ar_v1/data/subjects_data.dart';
import 'package:learn_with_ar_v1/providers/username_provider.dart';
import 'package:learn_with_ar_v1/tabs/tabs_manager.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

class LearnAnimals extends StatefulWidget {
  static const routeName = '/learn-animals';
  const LearnAnimals({super.key});

  @override
  State<LearnAnimals> createState() => _LearnAnimalsState();
}

class _LearnAnimalsState extends State<LearnAnimals> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
      'assets/audio/animals/video/animals.mp4',
    )..initialize().then(
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
                            "Are you ready to learn about Animals?",
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
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 200,
                              child: _controller.value.isInitialized
                                  ? AspectRatio(
                                      aspectRatio:
                                          _controller.value.aspectRatio,
                                      child: VideoPlayer(_controller),
                                    )
                                  : Container(),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
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
                                for (final data in animalsData)
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
