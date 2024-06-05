import 'package:flutter/material.dart';
import '../../data/model/all_expenses_item_model.dart';
import 'active_and_inactive_expenses_items.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.allExpensesItemModel});

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return ActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel);
  }
}
