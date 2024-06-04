import 'package:dashboard/core/utils/app_images.dart';
import 'package:dashboard/data/model/drawer_item_model.dart';
import 'package:dashboard/views/widgets/active_inactive_drawer_item.dart';
import 'package:dashboard/views/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

import 'custom_drawer_list.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: UserInfoListTile(
              title: 'Lekan Okeowo',
              subTitle: 'demo@gmail.com',
              image: Assets.avatar3,
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 8)),
          const CustomDrawerListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(child: SizedBox()),
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
            ),
          ),
        ],
      ),
    );
  }
}
