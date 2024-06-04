import 'package:dashboard/core/utils/app_images.dart';
import 'package:dashboard/views/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';
import 'custom_drawer_list.dart';
import 'drawer_bottom_column.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              title: 'Lekan Okeowo',
              subTitle: 'demo@gmail.com',
              image: Assets.avatar3,
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          CustomDrawerListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: DrawerBottomColumn(),
          ),
        ],
      ),
    );
  }
}
