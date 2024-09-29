import 'package:code_healers_sih/provider/test_data_provider.dart';
import 'package:code_healers_sih/resources/dimensions.dart';
import 'package:code_healers_sih/utils/app_constants.dart';
import 'package:code_healers_sih/view/test/testFormDetailsWidgets/detailed_matrix.dart';
import 'package:code_healers_sih/view/test/widgets/common_button.dart';
import 'package:code_healers_sih/view/test/widgets/text_input.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BasicMatrix extends StatelessWidget {
  final List<Map<String, String>> basicMatrix;
  final PageController pageController;
  const BasicMatrix({super.key, required this.basicMatrix, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          basicMatrix.length,
          (index) => Padding(
                padding: const EdgeInsets.only(
                    bottom: Dimensions.paddingSizeSmall),
                child: TextInput(
                  controller:context.read<TestDataProvider>().basicMatrix[index],
                 
                  title: basicMatrix[index]["label"]!,
                ),
              )),
              Expanded(child: Container()),
              CommonButton(title: "Next Page",ontap: (){
               pageController.nextPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeIn,
            );
              },icon: Icons.arrow_forward_ios,),
              SizedBox(height: 20,)
      ]
    );
  }
}
