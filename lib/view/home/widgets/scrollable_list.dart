import 'package:code_healers_sih/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:svg_flutter/svg.dart';

import '../../../resources/color.dart';
import '../../../resources/dimensions.dart';

class ScrollableList extends StatelessWidget {
  final List<String> featuresIcon;
  final List<String> featuresName;
  const ScrollableList({super.key, required this.featuresIcon, required this.featuresName});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.all(Dimensions.paddingSizeSmall),
        // clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
              featuresName.length,
              (index) => Container(
                    width: 100,
                    height: 105,
                    margin:
                        EdgeInsets.only(right: Dimensions.paddingSizeDefault),
                    padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeSmall,
                        vertical: Dimensions.paddingSizeSmall),
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius:
                          BorderRadius.circular(Dimensions.radiusExtraLarge),
                      boxShadow: [
                        BoxShadow(
                          color: AppColor.black.withOpacity(0.1),
                          blurRadius: 10,
                          spreadRadius: 1,
                          offset: const Offset(0, 2),
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 50,
                          child: FittedBox(
                              fit: BoxFit.fill,
                              child: SvgPicture.asset(
                                featuresIcon[index],
                              )),
                        ),
                        Gap(5),
                        Text(
                          featuresName[index],
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(
                                  color: AppColor.lightBlack,
                                  fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  )),
        ));
  }
}
