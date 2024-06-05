import 'package:dashboard/views/widgets/custom%20widgets/quick_invoice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../custom widgets/all_expenses.dart';
import '../custom widgets/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.only(top: 16),
            child: CustomScrollView(
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
            ),
          ),
        ),
      ],
    );
  }
}
