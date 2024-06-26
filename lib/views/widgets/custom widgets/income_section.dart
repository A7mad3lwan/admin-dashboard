import 'package:dashboard/views/widgets/custom%20widgets/custom_dashboard_container.dart';
import 'package:dashboard/views/widgets/custom%20widgets/income_chart.dart';
import 'package:dashboard/views/widgets/custom%20widgets/income_chart_2.dart';
import 'package:dashboard/views/widgets/custom%20widgets/income_items_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= 1200 && width < 1620
        ? const CustomDashboardContainer(
            child: Column(
              children: [
                IncomeSectionHeader(),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(child: IncomeChart2()),
                  ],
                ),
              ],
            ),
          )
        : const CustomDashboardContainer(
            child: Column(
              children: [
                IncomeSectionHeader(),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(child: IncomeChart()),
                    Expanded(
                      child: IncomeItemsListView(),
                    ),
                  ],
                ),
              ],
            ),
          );
  }
}
