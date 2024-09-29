import 'package:code_healers_sih/utils/app_constants.dart';
import 'package:code_healers_sih/view/test/testFormDetailsWidgets/basic_matrix.dart';
import 'package:code_healers_sih/view/test/testFormDetailsWidgets/detailed_matrix.dart';
import 'package:code_healers_sih/view/test/testFormDetailsWidgets/personal_information.dart';
import 'package:code_healers_sih/view/test/testFormDetailsWidgets/submit_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:logger/logger.dart';
import 'package:svg_flutter/svg.dart';

import '../../resources/color.dart';
import '../../resources/dimensions.dart';

class TestFormScreen extends StatefulWidget {
  const TestFormScreen({super.key});

  @override
  State<TestFormScreen> createState() => _TestFormScreenState();
}

class _TestFormScreenState extends State<TestFormScreen> {
  int _currentscreenIndex = 0;
  @override
  Widget build(BuildContext context) {
    final _pagecontroller = PageController();

    var log = Logger();

    List<String> _screentitle = [
      "Personal Information",
      "Basic details",
      "Detailed matrix",
      'Submit'
    ];

    
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(Dimensions.paddingSizeDefault),
              decoration: BoxDecoration(
                  color: AppColor.appBarColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(Dimensions.radiusExtraLarge),
                      bottomRight: Radius.circular(Dimensions.radiusExtraLarge))),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset(
                        Appconstants
                            .testscreenProgressIndicator[_currentscreenIndex],
                        height: 70,
                        width: 70,
                        fit: BoxFit.fill,
                      ),
                      Text(
                        "${_currentscreenIndex + 1}/4",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: AppColor.lightBlack,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(_screentitle[_currentscreenIndex],style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColor.lightBlack),),
                      Gap(5),
                      Text("Lab Report Details",style:Theme.of(context).textTheme.displayMedium!.copyWith(color: AppColor.lightBlack.withOpacity(0.6),fontWeight: FontWeight.w700) ,)
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(Dimensions.paddingSizeDefault),
                child: PageView(
                  onPageChanged: (int index) {
                    setState(() {
                      _currentscreenIndex = index;
                    });
                  },
                  // allowImplicitScrolling: true,
                  clipBehavior: Clip.none,
                  scrollDirection: Axis.horizontal,
                  controller: _pagecontroller,
                  children: [
                    PersonalInformation(pageController: _pagecontroller,),
                    BasicMatrix(
                      basicMatrix: Appconstants.basicHealthMetrics,
                      pageController: _pagecontroller,
                    ),
                    DetailedMatrix(
                      detailMatrix: Appconstants.exerciseCardiacMetrics,
                      pageController: _pagecontroller,
                    ),
                    SubmitScreen(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
