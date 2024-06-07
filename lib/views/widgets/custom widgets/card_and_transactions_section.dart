import 'package:dashboard/views/widgets/custom%20widgets/custom_dashboard_container.dart';
import 'package:dashboard/views/widgets/custom%20widgets/my_card_section.dart';
import 'package:dashboard/views/widgets/custom%20widgets/transaction_history.dart';
import 'package:flutter/material.dart';

import 'income_section.dart';

class MyCardAndTransactionsSection extends StatelessWidget {
  const MyCardAndTransactionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, right: 32, bottom: 32),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: CustomDashboardContainer(
              padding: 24,
              child: Column(
                children: [
                  MyCardSection(),
                  SizedBox(height: 20),
                  Divider(
                    height: 48,
                    color: Color(0xF1F1F1F1),
                  ),
                  SizedBox(height: 20),
                  TransactionHistory(),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Expanded(child: IncomeSection()),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
