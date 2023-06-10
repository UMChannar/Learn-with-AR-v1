import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

class EnglishAlphabetItems extends StatefulWidget {
  final String title1;
  final VoidCallback onTap1;
  final Color color1;
  final String audio1;
  final String title2;
  final VoidCallback onTap2;
  final Color color2;
  final String audio2;

  const EnglishAlphabetItems({
    Key? key,
    required this.title1,
    required this.onTap1,
    required this.color1,
    required this.audio1,
    required this.title2,
    required this.onTap2,
    required this.color2,
    required this.audio2,
  }) : super(key: key);

  @override
  State<EnglishAlphabetItems> createState() => _EnglishAlphabetItemsState();
}

class _EnglishAlphabetItemsState extends State<EnglishAlphabetItems> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: widget.onTap1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                decoration: BoxDecoration(
                  color: widget.color1,
                  borderRadius: BorderRadius.circular(20),
                ),
                width: 200,
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        widget.title1,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      IconButton(
                        onPressed: () {
                          Audio.load(widget.audio1)
                            ..play()
                            ..dispose();
                        },
                        icon: const Icon(Icons.volume_up),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: InkWell(
            onTap: widget.onTap2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                color: widget.color2,
                width: 200,
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        widget.title2,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      IconButton(
                        onPressed: () {
                          Audio.load(widget.audio2)
                            ..play()
                            ..dispose();
                        },
                        icon: const Icon(Icons.volume_up),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
