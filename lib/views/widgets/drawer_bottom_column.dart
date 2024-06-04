import 'package:flutter/material.dart';

import '../../core/utils/app_images.dart';
import '../../data/model/drawer_item_model.dart';
import 'active_inactive_drawer_item.dart';

class DrawerBottomColumn extends StatelessWidget {
  const DrawerBottomColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(child: SizedBox(height: 20)),
        InActiveDrawerItem(
          drawerItemModel: DrawerItemModel(
            title: 'Setting system',
            image: Assets.settings,
          ),
        ),
        InActiveDrawerItem(
          drawerItemModel: DrawerItemModel(
            title: 'Logout account',
            image: Assets.logout,
          ),
        ),
        const SizedBox(height: 48),
      ],
    );
  }
}
