import 'package:dashboard/views/widgets/custom%20widgets/custom_dashboard_container.dart';
import 'package:dashboard/views/widgets/custom%20widgets/latest_transaction.dart';
import 'package:dashboard/views/widgets/custom%20widgets/quick_invoice_header.dart';
import 'package:dashboard/views/widgets/custom%20widgets/title_text_field.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomDashboardContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 24),
          LatestTransaction(),
          Divider(
            height: 48,
            color: Color(0xFF064061),
          ),
          TitleTextField(
            title: 'Customer Name',
            hint: 'Type customer name',
          ),
        ],
      ),
    );
  }
}
