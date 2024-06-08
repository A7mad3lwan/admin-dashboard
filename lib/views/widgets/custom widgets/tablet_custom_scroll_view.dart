import 'package:dashboard/views/widgets/custom%20widgets/quick_invoice.dart';
import 'package:flutter/material.dart';

import 'all_expenses.dart';
import 'card_and_transactions_section.dart';
import 'income_section.dart';

class TabletScrollView extends StatelessWidget {
  const TabletScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              AllExpenses(),
              SizedBox(height: 20),
              QuickInvoice(),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 15),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              MyCardAndTransactionsSection(),
              SizedBox(height: 20),
              IncomeSection(),
            ],
          ),
        ),
      ],
    );
  }
}
