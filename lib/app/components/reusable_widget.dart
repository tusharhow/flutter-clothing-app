import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.child,
    this.offset = const Offset(8, 8),
    this.size = const Size(180, 250),
    this.bgColor = const Color(0xFFE9EFF3),
    this.border = const Border(),
  }) : super(key: key);

  final Widget child;
  final Offset offset;
  final Size size;

  final Color bgColor;
  final Border border;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
        shape: BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: offset,
          ),
        ],
        color: bgColor,
      ),
      child: child,
    );
  }
}
