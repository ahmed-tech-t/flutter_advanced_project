import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/core/helpers/extintions.dart';
import 'package:test_app/core/routing/routes.dart';
import 'package:test_app/core/theming/colors.dart';
import 'package:test_app/core/theming/styles.dart';
import 'package:test_app/features/onboarding/widgets/doctor_with_logo.dart';
import 'package:test_app/features/onboarding/widgets/get_started_button.dart';
import 'package:test_app/features/onboarding/widgets/logo_with_docdoc.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              const LogoWithDocdoc(),
              SizedBox(
                height: 30.h,
              ),
              const DoctorWithLogo(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  children: [
                    Text(
                      "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                      style: TextStyles.font10GrayRegular,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    GetStartedButton(
                      onClick: () {
                        context.pushReplacementNamed(Routes.loginScreen);
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
