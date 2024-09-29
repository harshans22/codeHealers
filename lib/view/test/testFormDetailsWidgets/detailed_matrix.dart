import 'package:code_healers_sih/provider/test_data_provider.dart';
import 'package:code_healers_sih/resources/dimensions.dart';
import 'package:code_healers_sih/view/test/widgets/common_button.dart';
import 'package:code_healers_sih/view/test/widgets/text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class DetailedMatrix extends StatelessWidget {
  final List<Map<String, String>> detailMatrix;
  final PageController pageController;
  const DetailedMatrix(
      {super.key, required this.detailMatrix, required this.pageController});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TestDataProvider>(context, listen: false);
    return Column(children: [
      ...List.generate(
          detailMatrix.length,
          (index) => Padding(
                padding:
                    const EdgeInsets.only(bottom: Dimensions.paddingSizeSmall),
                child: TextInput(
               
                  controller: context.read<TestDataProvider>().detailedMatrix[index],
                  title: detailMatrix[index]["label"]!,
                ),
              )),
      Expanded(child: Container()),
      CommonButton(
        title: "Next Page",
        ontap: ()  {
                pageController.nextPage(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeIn,
          );
         
        },
        icon: Icons.arrow_forward_ios,
      ),
     Gap(20),
    ]);
  }
}
