import 'package:dashboard/views/widgets/custom%20widgets/custom_drawer.dart';
import 'package:dashboard/views/widgets/custom%20widgets/tablet_custom_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        appBar: MediaQuery.of(context).size.width < 880
            ? AppBar(
                backgroundColor: const Color(0xff4DB7F2),
                leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(
                    FontAwesomeIcons.bars,
                    color: Colors.white,
                  ),
                ),
              )
            : null,
        drawer: const Drawer(
          child: CustomDrawer(),
        ),
        body: const TabletScrollView(),
      ),
    );
  }
}
