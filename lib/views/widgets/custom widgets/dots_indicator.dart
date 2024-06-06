import 'package:dashboard/views/widgets/custom%20widgets/custom_dots.dart';
import 'package:flutter/material.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => const Padding(
          padding: EdgeInsets.only(right: 8),
          child: CustomDotsIndicator(isActive: false),
        ),
      ),
    );
  }
}
