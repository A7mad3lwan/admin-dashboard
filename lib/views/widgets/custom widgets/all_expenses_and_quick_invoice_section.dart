import 'package:dashboard/views/widgets/custom%20widgets/quick_invoice.dart';
import 'package:flutter/material.dart';

import 'all_expenses.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              AllExpenses(),
              SizedBox(height: 20),
              QuickInvoice(),
            ],
          ),
        )
      ],
    );
  }
}
