import 'package:flutter/material.dart';
import 'package:test_app/core/theming/colors.dart';
import 'package:test_app/core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key,
    required this.onClick,
  });

  final Function() onClick;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onClick,
      style: const ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        backgroundColor: WidgetStatePropertyAll(ColorsManager.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStatePropertyAll(
          Size(double.infinity, 42),
        ),
      ),
      child: Text(
        "Get Started",
        style: TextStyles.font16WhiteSemiBold,
      ),
    );
  }
}
