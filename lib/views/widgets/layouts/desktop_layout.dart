import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../custom widgets/all_expenses_and_quick_invoice_section.dart';
import '../custom widgets/custom_drawer.dart';
import '../custom widgets/my_card_and_transaction_and_income_section.dart';

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
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: MyCardAndTransactionAndIncomeSection(),
          ),
        ),
        SizedBox(width: 24),
      ],
    );
  }
}
