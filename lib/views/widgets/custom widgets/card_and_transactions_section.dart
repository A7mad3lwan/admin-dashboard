import 'package:dashboard/views/widgets/custom%20widgets/custom_dashboard_container.dart';
import 'package:dashboard/views/widgets/custom%20widgets/my_card_section.dart';
import 'package:dashboard/views/widgets/custom%20widgets/transaction_history.dart';
import 'package:flutter/material.dart';

class MyCardAndTransactionsSection extends StatelessWidget {
  const MyCardAndTransactionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomDashboardContainer(
      padding: 20,
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
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
