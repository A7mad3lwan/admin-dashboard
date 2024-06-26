import 'package:dashboard/views/widgets/layouts/adaptive_layout_builder.dart';
import 'package:dashboard/views/widgets/layouts/desktop_layout.dart';
import 'package:dashboard/views/widgets/layouts/mobile_layout.dart';
import 'package:dashboard/views/widgets/layouts/tablet_layout.dart';
import 'package:flutter/material.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AdaptiveLayout(
          mobileLayout: (context) => const MobileLayout(),
          tabletLayout: (context) => const TabletLayout(),
          desktopLayout: (context) => const DesktopLayout(),
        ),
      ),
    );
  }
}
