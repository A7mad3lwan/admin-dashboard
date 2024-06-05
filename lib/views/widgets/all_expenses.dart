import 'package:dashboard/views/widgets/all_expenses_header.dart';
import 'package:dashboard/views/widgets/all_expenses_items_list.dart';
import 'package:flutter/material.dart';

import 'layouts/custom_dashboard_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomDashboardContainer(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Column(
          children: [
            AllExpensesHeader(),
            SizedBox(height: 16),
            AllExpensesItemsList(),
          ],
        ),
      ),
    );
  }
}
