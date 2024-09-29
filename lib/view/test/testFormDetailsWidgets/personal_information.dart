import 'package:code_healers_sih/provider/test_data_provider.dart';
import 'package:code_healers_sih/view/test/widgets/common_button.dart';
import 'package:code_healers_sih/view/test/widgets/text_input.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class PersonalInformation extends StatelessWidget {
  final PageController pageController;
  const PersonalInformation({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<TestDataProvider>(context, listen: false);
    return Column(
      children: [
        TextInput(title:"Patient's Name" , controller: context.read<TestDataProvider>().nameController, 
        ),
        Gap(5),
        TextInput(title:"Age" , controller: context.read<TestDataProvider>().ageController,),
        Gap(5),
        TextInput(title:"Gender" , controller: context.read<TestDataProvider>().sexController,),
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
        ],
    );
  }
}
