import 'package:flutter/material.dart';

class OWRListItems extends StatefulWidget {
  final String title1;
  final VoidCallback onTap1;
  final Color color1;
  final String title2;
  final VoidCallback onTap2;
  final Color color2;

  const OWRListItems({
    Key? key,
    required this.title1,
    required this.onTap1,
    required this.title2,
    required this.onTap2,
    required this.color1,
    required this.color2,
  }) : super(key: key);

  @override
  State<OWRListItems> createState() => _OWRListItemsState();
}

class _OWRListItemsState extends State<OWRListItems> {
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
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        widget.title1,
                        style: Theme.of(context).textTheme.bodyMedium,
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
                decoration: BoxDecoration(
                  color: widget.color2,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        widget.title2,
                        style: Theme.of(context).textTheme.bodyMedium,
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
