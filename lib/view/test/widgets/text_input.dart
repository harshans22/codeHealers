import 'package:code_healers_sih/provider/test_data_provider.dart';
import 'package:code_healers_sih/resources/color.dart';
import 'package:code_healers_sih/resources/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class TextInput extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  const TextInput(
      {super.key, required this.title, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style:Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: AppColor.lightBlack,fontWeight: FontWeight.w700) ,),
                Gap(5),
        TextFormField(
          controller:controller,
          scrollPadding: const EdgeInsets.all(0),
          cursorColor: AppColor.lightBlack,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
                horizontal: Dimensions.paddingSizeDefault),
            
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColor.darkGrey, width: 2),
                borderRadius: BorderRadius.circular(Dimensions.radiusDefault)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColor.darkGrey, width: 2),
                borderRadius: BorderRadius.circular(Dimensions.radiusDefault)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColor.darkGrey, width: 2),
                borderRadius: BorderRadius.circular(Dimensions.radiusDefault)),
          ),
        ),
      ],
    );
  }
}
