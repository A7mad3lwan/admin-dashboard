import 'package:dashboard/core/utils/app_images.dart';
import 'package:dashboard/views/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfoListTile(
            title: 'Lekan Okeowo',
            subTitle: 'demo@gmail.com',
            image: Assets.avatar3,
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
