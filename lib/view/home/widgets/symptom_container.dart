import 'package:code_healers_sih/resources/color.dart';
import 'package:code_healers_sih/resources/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SymptomContainer extends StatelessWidget {
  String symptom;
   SymptomContainer({
    required this.symptom,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.paddingSizeExtraSmall),
          child: Text(symptom),
        ),
        decoration: BoxDecoration(
            border: Border.all(color: AppColor.darkGrey),
            borderRadius: BorderRadius.circular(Dimensions.radiusSmall)),
      ),
    );
  }
}
