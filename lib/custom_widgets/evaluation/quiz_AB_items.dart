import 'package:audiofileplayer/audiofileplayer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_with_ar_v1/custom_widgets/evaluation/result_AB_items.dart';
import 'package:learn_with_ar_v1/data/questions.dart';
import 'package:learn_with_ar_v1/tabs/tabs_manager.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

class QuizABItems extends StatefulWidget {
  final List<Map<dynamic, dynamic>> subject;
  const QuizABItems({super.key, required this.subject});

  @override
  State<QuizABItems> createState() => _QuizABItemsState();
}

class _QuizABItemsState extends State<QuizABItems> {
  int index = 0;
  int score = 0;
  final maxIndex = 9;
  final CountdownController _controller = CountdownController(autoStart: true);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(
                'Important',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.red,
                    ),
              ),
              content: Text(
                'You are about to start the evaluation for this subject. Please make sure to study the material thoroughly before proceeding. Once you start the evaluation, you will not be able to leave this section.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              actions: [
                TextButton(
                  child: Text(
                    'I Understand',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue,
                        ),
                  ),
                  onPressed: () {
                    Navigator.pop(context); // Remove the alert dialog
                  },
                ),
                TextButton(
                  child: Text(
                    'Go Back',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue,
                        ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    Get.to(
                      const TabsManager(),
                    ); // Remove the alert dialog
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    bool answer = false;

    void check(var opt) {
      if (index == maxIndex) {
        if (widget.subject[index]["answer"] ==
            widget.subject[index]["option"][opt]) {
          score += 10;
          answer = true;
        } else {
          answer = false;
        }
        add_answers(answer);

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => QuizResultAB(score, widget.subject),
          ),
        );
        // Get.to(
        //   () => QuizResult(score, widget.subject),
        // );
      } else {
        if (widget.subject[index]["answer"] ==
            widget.subject[index]["option"][opt]) {
          score += 10;
          answer = true;
        } else {
          answer = false;
        }
        add_answers(answer);

        setState(() {
          index += 1;
          _controller.restart();
        });
      }
    }

    return WillPopScope(
      onWillPop: () async {
        return false;
      },
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
          child: Column(
            children: [
              Countdown(
                controller: _controller,
                seconds: 10,
                build: (BuildContext context, double time) => Container(
                  margin: const EdgeInsets.fromLTRB(5, 50, 5, 25),
                  width: double.infinity,
                  height: 25,
                  child: LinearPercentIndicator(
                    barRadius: const Radius.circular(10),
                    percent: 1.0 - (time.toDouble() / 10),
                    backgroundColor: Colors.grey.shade600,
                    progressColor: Colors.blue,
                    lineHeight: 25,
                    center: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(5),
                          child: Text(
                            "${time.toString()}/10.0",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          margin: const EdgeInsets.all(3),
                          child: const Icon(
                            Icons.timer_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                interval: const Duration(milliseconds: 100),
                onFinished: () {
                  if (index == maxIndex) {
                    add_answers(answer);

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              QuizResultAB(score, widget.subject)),
                    );
                    // Get.to(
                    //   () => QuizResult(score, widget.subject),
                    // );
                  } else {
                    add_answers(answer);
                    setState(() {
                      index++;
                      _controller.restart();
                    });
                  }
                },
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  width: double.infinity,
                  height: double.infinity,
                  child: Card(
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(5),
                          child: Row(children: [
                            const Text(
                              "Questions",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "${index + 1} / ${maxIndex + 1}",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: Colors.black,
                                    ),
                              ),
                            ),
                          ]),
                        ),
                        Divider(
                          color: Colors.grey.shade700,
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            padding: const EdgeInsets.all(5),
                            width: double.infinity,
                            height: double.infinity,
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  padding: const EdgeInsets.all(5),
                                  child: Column(
                                    children: [
                                      Text(
                                        widget.subject[index]["question"],
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .copyWith(
                                              color: Colors.black,
                                            ),
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.clip,
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.05,
                                      ),
                                      IconButton(
                                        onPressed: () async {
                                          Audio.load(widget.subject[index]
                                                  ["sound"]
                                              .toString())
                                            ..play()
                                            ..dispose();
                                        },
                                        icon: const Icon(
                                            Icons.volume_up_outlined),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  padding: const EdgeInsets.all(5),
                                  width: double.infinity,
                                  child: ElevatedButton(
                                      onPressed: () => setState(() {
                                            check(0);
                                          }),
                                      child: Text(
                                        widget.subject[index]["option"][0],
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                              color: Colors.white,
                                            ),
                                        overflow: TextOverflow.clip,
                                        textAlign: TextAlign.center,
                                      )),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  padding: const EdgeInsets.all(5),
                                  width: double.infinity,
                                  child: ElevatedButton(
                                      onPressed: () => setState(() {
                                            check(1);
                                          }),
                                      child: Text(
                                        widget.subject[index]["option"][1],
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                              color: Colors.white,
                                            ),
                                        overflow: TextOverflow.clip,
                                        textAlign: TextAlign.center,
                                      )),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  padding: const EdgeInsets.all(5),
                                  width: double.infinity,
                                  child: ElevatedButton(
                                      onPressed: () => setState(() {
                                            check(2);
                                          }),
                                      child: Text(
                                        widget.subject[index]["option"][2],
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                              color: Colors.white,
                                            ),
                                        overflow: TextOverflow.clip,
                                        textAlign: TextAlign.center,
                                      )),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  padding: const EdgeInsets.all(5),
                                  width: double.infinity,
                                  child: ElevatedButton(
                                      onPressed: () => setState(() {
                                            check(3);
                                          }),
                                      child: Text(
                                        widget.subject[index]["option"][3],
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                              color: Colors.white,
                                            ),
                                        overflow: TextOverflow.clip,
                                        textAlign: TextAlign.center,
                                      )),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
