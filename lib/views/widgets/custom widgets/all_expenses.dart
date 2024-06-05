import 'package:flutter/material.dart';
import 'all_expenses_header.dart';
import 'all_expenses_items_list.dart';
import 'custom_dashboard_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomDashboardContainer(
      padding: 20,
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesItemsList(),
        ],
      ),
    );
  }
}
