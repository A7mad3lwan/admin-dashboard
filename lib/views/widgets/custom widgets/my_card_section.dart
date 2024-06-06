import 'package:dashboard/core/utils/app_styles.dart';
import 'package:dashboard/views/widgets/custom%20widgets/dots_indicator.dart';
import 'package:dashboard/views/widgets/custom%20widgets/my_cards_page_view.dart';
import 'package:flutter/material.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My card',
          style: AppStyles.styleSemiBold20,
        ),
        SizedBox(height: 20),
        MyCardsPageView(),
        SizedBox(height: 20),
        DotsIndicator(),
      ],
    );
  }
}
