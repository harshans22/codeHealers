import 'package:code_healers_sih/resources/color.dart';
import 'package:code_healers_sih/resources/dimensions.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String text;
  Icon icon;
   Button({
    required this.text,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.paddingSizeSmall),
          color: const Color(0xFF104580),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(color: AppColor.white),
            ),
           icon,
          ],
        ));
  }
}
