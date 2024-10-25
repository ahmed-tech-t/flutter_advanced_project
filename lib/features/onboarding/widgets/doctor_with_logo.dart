import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/core/helpers/AssetsData.dart';
import 'package:test_app/core/theming/styles.dart';

class DoctorWithLogo extends StatelessWidget {
  const DoctorWithLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(AssetsData.logoWithLowOpacity),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              stops: const [.3, .8],
              end: Alignment.center,
              colors: [Colors.white, Colors.white.withAlpha(0)],
            ),
          ),
          child: Image.asset(AssetsData.onBoardingDoctor),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "Best Doctor \n Appointment App",
              textAlign: TextAlign.center,
              style: TextStyles.font30MainBlueBold,
            ),
          ),
        ),
      ],
    );
  }
}
