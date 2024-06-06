import 'package:dashboard/views/widgets/custom%20widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

import '../../../data/data source/statics/user_list_tile_items_list.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: userTileItems
            .map(
              (e) => IntrinsicWidth(
                child: UserInfoListTile(userListTileModel: e),
              ),
            )
            .toList(),
      ),
    );
  }
}
