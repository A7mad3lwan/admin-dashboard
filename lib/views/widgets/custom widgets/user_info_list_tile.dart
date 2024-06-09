import 'package:dashboard/core/utils/app_styles.dart';
import 'package:dashboard/data/model/user_list_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userListTileModel});

  final UserListTileModel userListTileModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userListTileModel.image),
          title: Text(
            userListTileModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Text(
            userListTileModel.subtitle,
            style: AppStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
