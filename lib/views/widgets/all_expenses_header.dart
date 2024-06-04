import 'package:dashboard/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20,
        ),
        const Expanded(child: SizedBox()),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                side: const BorderSide(
                  width: 1,
                  color: Color(0xffF1F1F1),
                ),
                borderRadius: BorderRadius.circular(12)),
          ),
          child: const Row(
            children: [
              Text(
                'Monthly',
                style: AppStyles.styleMedium16,
              ),
              SizedBox(width: 18),
              Icon(
                Icons.keyboard_arrow_down_sharp,
                color: Color(0xFF064061),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
