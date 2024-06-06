import 'package:dashboard/core/utils/app_styles.dart';
import 'package:dashboard/views/widgets/custom%20widgets/transactions_header.dart';
import 'package:dashboard/views/widgets/custom%20widgets/transactions_history_list.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionsHeader(),
        SizedBox(height: 20),
        Text(
          '13 April 2022',
          style: AppStyles.styleSemiBold16,
        ),
        TransactionsHistoryList(),
      ],
    );
  }
}
