import 'package:dashboard/views/widgets/custom%20widgets/transaction_item.dart';
import 'package:flutter/material.dart';

import '../../../data/data source/statics/transactions_items_list.dart';

class TransactionsHistoryList extends StatelessWidget {
  const TransactionsHistoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: transactionsItems.length,
      itemBuilder: (context, index) => TransactionsItem(
        transactionsModel: transactionsItems[index],
      ),
    );
  }
}
