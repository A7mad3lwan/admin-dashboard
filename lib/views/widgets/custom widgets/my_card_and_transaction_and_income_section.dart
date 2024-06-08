import 'package:flutter/material.dart';

import 'card_and_transactions_section.dart';
import 'income_section.dart';

class MyCardAndTransactionAndIncomeSection extends StatelessWidget {
  const MyCardAndTransactionAndIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: MyCardAndTransactionsSection(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 20),
        ),
        SliverToBoxAdapter(
          child: IncomeSection(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 20),
        ),
      ],
    );
  }
}
