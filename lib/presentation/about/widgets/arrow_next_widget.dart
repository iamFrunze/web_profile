import 'package:flutter/material.dart';

class ArrowNextWidget extends StatefulWidget {
  final bool isNext;

  const ArrowNextWidget({
    Key? key,
    required this.isNext,
  }) : super(key: key);

  @override
  State<ArrowNextWidget> createState() => _ArrowNextWidgetState();
}

class _ArrowNextWidgetState extends State<ArrowNextWidget> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) => setState(() => isHover = true),
      onExit: (value) => setState(() => isHover = false),
      child: Container(
        color: isHover ? Colors.grey : null,
        child: Center(
          child: Icon(
            widget.isNext ? Icons.arrow_forward_ios : Icons.arrow_back_ios,
          ),
        ),
      ),
    );
  }
}
