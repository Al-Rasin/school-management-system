import 'package:fems/app/utils/appsizes.dart';
import 'package:flutter/material.dart';

class HorizontalBar extends StatelessWidget {
  const HorizontalBar({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      height: 4,
      width: 30,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          AppSize.size30,
        ),
      ),
    );
  }
}
