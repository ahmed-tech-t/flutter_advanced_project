import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/core/helpers/AssetsData.dart';
import 'package:test_app/core/theming/styles.dart';

class LogoWithDocdoc extends StatelessWidget {
  const LogoWithDocdoc({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AssetsData.logo),
        const SizedBox(
          width: 5,
        ),
        Text("Docdoc", style: TextStyles.font24Black700Weight)
      ],
    );
  }
}
