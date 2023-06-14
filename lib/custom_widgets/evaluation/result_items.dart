import 'package:flutter/material.dart';
import 'package:learn_with_ar_v1/custom_widgets/evaluation/quiz_items.dart';
import 'package:learn_with_ar_v1/data/questions.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

class QuizResult extends StatefulWidget {
  var score;
  final List<Map<dynamic, dynamic>> subject;

  QuizResult(this.score, this.subject, {super.key});

  @override
  State<QuizResult> createState() => _QuizResultState();
}

class _QuizResultState extends State<QuizResult> {
  final maxIndex = 9;

  @override
  void initState() {
    super.initState();
    if (widget.score >= 70) {
      Audio.load('assets/audio/quiz/victory.mp3')
        ..play()
        ..dispose();
    } else {
      Audio.load('assets/audio/quiz/lose.mp3')
        ..play()
        ..dispose();
    }
  }

  List<Widget> listCard() {
    List<Widget> cards = [];

    for (int i = 0; i < maxIndex + 1; i++) {
      cards.add(CustomCard(i, widget.subject));
    }
    return cards;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.pink[200]!],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(5, 50, 5, 0),
                width: double.infinity,
                child: Card(
                  color: const Color.fromARGB(55, 0, 0, 0),
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Row(children: [
                      Expanded(
                          child: Column(
                        children: [
                          CircularPercentIndicator(
                            radius: 50.0,
                            lineWidth: 10.0,
                            percent: widget.score / 100,
                            center: Text(
                              "Score\n${widget.score}",
                              style: const TextStyle(
                                  fontSize: 15, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            progressColor: Colors.blue.shade800,
                            backgroundColor: Colors.grey.shade800,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Total Score",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            '${widget.score}',
                            style: const TextStyle(
                                fontSize: 15, color: Colors.white),
                          )
                        ],
                      )),
                      Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Center(
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        QuizItems(subject: widget.subject),
                                  ),
                                );
                                // Get.to(
                                //     () => QuizItems(subject: widget.subject));
                                clear_answers();
                              },
                              icon: const Icon(
                                Icons.restart_alt,
                                size: 50,
                                color: Colors.green,
                              )),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                              // Navigator.pushReplacementNamed(
                              //     context, EvaluationHomeScreen.routeName);
                              clear_answers();
                            },
                            icon: const Icon(
                              Icons.home,
                              color: Colors.red,
                              size: 50,
                            )),
                      ),
                      const SizedBox(width: 25)
                    ]),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(children: listCard()),
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

class CustomCard extends StatelessWidget {
  var index;
  final List<Map<dynamic, dynamic>> subject;

  CustomCard(this.index, this.subject, {super.key});

  dynamic retColor(int i) {
    if (answers[i] == true) {
      return Colors.blue.shade800;
    } else {
      return Colors.grey.shade800;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: retColor(index),
      child: Container(
          margin: const EdgeInsets.all(10),
          child: Text(
            subject[index]["note"],
            style: const TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          )),
    );
  }
}
