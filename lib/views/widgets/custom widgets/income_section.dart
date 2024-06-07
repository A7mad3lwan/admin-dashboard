import 'package:dashboard/core/utils/app_styles.dart';
import 'package:dashboard/views/widgets/custom%20widgets/custom_dashboard_container.dart';
import 'package:dashboard/views/widgets/custom%20widgets/income_chart.dart';
import 'package:flutter/material.dart';
import 'income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomDashboardContainer(
      padding: 20,
      child: Column(
        children: [
          const IncomeSectionHeader(),
          const SizedBox(height: 16),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(child: IncomeChart()),
                Expanded(
                  child: ListTile(
                    leading: Container(
                      width: 12,
                      height: 12,
                      decoration: const ShapeDecoration(
                        color: Color(0xff4DB7F2),
                        shape: OvalBorder(),
                      ),
                    ),
                    title: const Text(
                      'Design Product',
                      style: AppStyles.styleRegular16,
                    ),
                    trailing: const Text(
                      '%25',
                      style: AppStyles.styleMedium16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
