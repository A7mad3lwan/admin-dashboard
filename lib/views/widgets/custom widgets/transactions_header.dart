import 'package:flutter/material.dart';

import '../../../core/utils/app_styles.dart';

class TransactionsHeader extends StatelessWidget {
  const TransactionsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20,
        ),
        Text(
          'See all',
          style:
              AppStyles.styleMedium16.copyWith(color: const Color(0xff4EB7F2)),
        ),
      ],
    );
  }
}