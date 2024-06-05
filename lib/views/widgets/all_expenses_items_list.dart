import 'package:dashboard/views/widgets/all_expenses_item.dart';
import 'package:flutter/material.dart';

import '../../data/data source/statics/all_expenses_item_list.dart';

class AllExpensesItemsList extends StatelessWidget {
  const AllExpensesItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: expensesItems.asMap().entries.map((e) {
        int index = e.key;
        var items = e.value;
        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpensesItem(allExpensesItemModel: items),
            ),
          );
        } else {
          return Expanded(child: AllExpensesItem(allExpensesItemModel: items));
        }
      }).toList(),
    );
  }
}
