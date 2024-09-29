import 'package:code_healers_sih/view/test/test_result_screen.dart';
import 'package:code_healers_sih/view/test/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../../../provider/test_data_provider.dart';
import '../widgets/text_input.dart';

class SubmitScreen extends StatelessWidget {
  const SubmitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<TestDataProvider>(context, listen: true);
    return provider.loader?LottieBuilder.asset("assets/testscreen/loader.json") :Column(
      children: [
        TextInput(title:"Report Id/Number" , controller: TextEditingController(), 
        ),
        Gap(5),
        TextInput(title:"Lab Name" , controller:  TextEditingController(),),
        Gap(5),
        TextInput(title:"Doctor Name" , controller:  TextEditingController(),),
        Expanded(child: Container()),
        CommonButton(
          isloader:provider.loader ,
        title: "Submit",
        ontap: ()async  {
           await provider.delayloader();
          Navigator.push(context, MaterialPageRoute(builder: (context)=>TestResultScreen()));
        },
        icon: Icons.check,
      ),
      Gap(20),
      ],
    );
  }
}