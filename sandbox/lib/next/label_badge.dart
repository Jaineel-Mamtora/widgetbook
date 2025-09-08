import 'package:flutter/material.dart';

class LabelBadge extends StatefulWidget {
  const LabelBadge({
    super.key,
    required this.text,
  });

  final String text;

  @override
  State<LabelBadge> createState() => _LabelBadgeState();
}

class _LabelBadgeState extends State<LabelBadge> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() => isClicked = !isClicked);
      },
      child: Badge(
        label: Text('${widget.text}${isClicked ? ' clicked' : ''}'),
      ),
    );
  }
}
