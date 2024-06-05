import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key,
      required this.image,
      this.imageColor,
      this.imageBackground,
      this.iconColor});

  final String image;
  final Color? imageColor, imageBackground, iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            color: imageBackground ?? const Color(0xffFAFAFA),
            shape: const OvalBorder(),
          ),
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                imageColor ?? const Color(0xff4EB7F2),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        const Expanded(child: SizedBox()),
        Icon(
          Icons.keyboard_arrow_right_sharp,
          color: iconColor == null ? const Color(0xff064061) : Colors.white,
        ),
      ],
    );
  }
}
