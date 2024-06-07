import 'package:dashboard/data/data%20source/statics/income_items_list.dart';
import 'package:dashboard/views/widgets/custom%20widgets/custom_incomes_item.dart';
import 'package:flutter/material.dart';

class IncomeItemsListView extends StatelessWidget {
  const IncomeItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: incomeItems.length,
      shrinkWrap: true,
      itemBuilder: (context, index) =>
          IncomeItem(itemDetailsModel: incomeItems[index]),
    );
  }
}
