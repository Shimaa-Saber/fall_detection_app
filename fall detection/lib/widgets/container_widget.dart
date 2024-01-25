import 'package:flutter/material.dart';

class container_widget extends StatelessWidget {
  const container_widget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: size.width * 0.218,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
