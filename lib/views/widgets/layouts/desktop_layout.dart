import 'package:dashboard/views/widgets/custom%20widgets/income_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../custom widgets/all_expenses_and_quick_invoice_section.dart';
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
            padding: EdgeInsets.only(top: 40),
            child: AllExpensesAndQuickInvoiceSection(),
          ),
        ),
        SizedBox(width: 24),
        Expanded(
          child: IncomeSection(),
        ),
      ],
    );
  }
}
