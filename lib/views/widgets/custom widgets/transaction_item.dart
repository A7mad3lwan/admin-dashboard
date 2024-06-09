import 'package:dashboard/core/utils/app_styles.dart';
import 'package:dashboard/data/model/transactions_model.dart';
import 'package:flutter/material.dart';

class TransactionsItem extends StatelessWidget {
  const TransactionsItem({super.key, required this.transactionsModel});

  final TransactionsModel transactionsModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transactionsModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionsModel.date,
          style: AppStyles.styleRegular16(context).copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        trailing: Text(
          transactionsModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transactionsModel.isWithdrawal
                ? const Color(0xffF3735E)
                : const Color(0xff7CD87A),
          ),
        ),
      ),
    );
  }
}
