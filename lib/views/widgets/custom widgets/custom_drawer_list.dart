import 'package:dashboard/data/data%20source/statics/drawer_items_list.dart';
import 'package:flutter/material.dart';
import 'drawer_item.dart';

class CustomDrawerListView extends StatefulWidget {
  const CustomDrawerListView({super.key});

  @override
  State<CustomDrawerListView> createState() => _CustomDrawerListViewState();
}

class _CustomDrawerListViewState extends State<CustomDrawerListView> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (activeIndex != index) {
            setState(() {
              activeIndex = index;
            });
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: DrawerItem(
            drawerItemModel: items[index],
            isActive: activeIndex == index,
          ),
        ),
      ),
    );
  }
}
