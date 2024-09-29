import 'package:code_healers_sih/provider/test_data_provider.dart';
import 'package:code_healers_sih/resources/color.dart';
import 'package:code_healers_sih/resources/dimensions.dart';
import 'package:code_healers_sih/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:svg_flutter/svg.dart';

class TestResultScreen extends StatelessWidget {
  const TestResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TestDataProvider>(context);
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 360),
        child: Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(Dimensions.paddingSizeDefault),
                  decoration: BoxDecoration(
                    color: AppColor.appBarColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Heart",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: AppColor.lightBlack),
                          ),
                          const Gap(5),
                          Text(
                            "Disease Diagnosis",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                    color: AppColor.lightBlack.withOpacity(0.6),
                                    fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                      SvgPicture.asset(Appconstants.categoryIcon[0])
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Dimensions.paddingSizeDefault),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(10),
                      Text(
                        "Report",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: AppColor.lightBlack),
                      ),
                      const Gap(10),
                      Container(
                        width: double.infinity,
                        padding:
                            const EdgeInsets.all(Dimensions.paddingSizeDefault),
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(
                              Dimensions.radiusExtraLarge),
                          boxShadow: [
                            BoxShadow(
                              color: AppColor.black.withOpacity(0.1),
                              blurRadius: 10,
                              spreadRadius: 1,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: SvgPicture.asset(
                                int.parse(provider.basicMatrix[4].text.toString()) != 2
                                      ? "assets/testresultscreen/negative.svg"
                                      : "assets/testresultscreen/positive.svg"),
                            ),
                            const Gap(10),
                            Text(
                              "Dear ${provider.nameController.text}",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text(
                              int.parse(provider.basicMatrix[4].text.toString()) == 2?"Please note, the prediction indicates a potential risk of heart disease. It's important to consult with a healthcare professional for a thorough evaluation.":"Good news! Based on the prediction, you have a low risk of heart attack. However, we recommend regular check-ups for your peace of mind.",
                              
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                    color: AppColor.lightBlack.withOpacity(0.5),
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
