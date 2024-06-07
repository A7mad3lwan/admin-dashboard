import 'package:dashboard/views/widgets/custom%20widgets/custom_dashboard_container.dart';
import 'package:dashboard/views/widgets/custom%20widgets/income_chart.dart';
import 'package:dashboard/views/widgets/custom%20widgets/income_items_list_view.dart';
import 'package:flutter/material.dart';
import 'income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomDashboardContainer(
      padding: 20,
      child: Column(
        children: [
          IncomeSectionHeader(),
          SizedBox(height: 16),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: IncomeChart()),
                Expanded(
                  child: IncomeItemsListView(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
