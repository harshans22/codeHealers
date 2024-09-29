import 'package:code_healers_sih/resources/color.dart';
import 'package:code_healers_sih/resources/dimensions.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback ontap;
  bool isloader;
  CommonButton(
      {super.key,
      required this.title,
      required this.ontap,
      required this.icon,
      this.isloader = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(Dimensions.paddingSizeSmall),
        decoration: BoxDecoration(
            color: AppColor.darkBlue,
            borderRadius: BorderRadius.circular(Dimensions.radiusSmall)),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: AppColor.white),
            ),
            Icon(
              icon,
              size: 15,
              color: AppColor.white,
            )
          ],
        ),
      ),
    );
  }
}
