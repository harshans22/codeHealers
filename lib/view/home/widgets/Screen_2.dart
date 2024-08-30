import 'package:code_healers_sih/resources/color.dart';
import 'package:code_healers_sih/resources/dimensions.dart';
import 'package:code_healers_sih/resources/theme.dart';
import 'package:code_healers_sih/view/home/widgets/Appbar_row.dart';
import 'package:code_healers_sih/view/home/widgets/Button.dart';
import 'package:code_healers_sih/view/home/widgets/Screen_3.dart';
import 'package:code_healers_sih/view/home/widgets/input_field.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.lightBlue.withOpacity(0.1),
        toolbarHeight: 100,
        title:Appbar(image: "assets/homescreen/Group 284.png", number: "2/3", title: "Lab Report Details", subtitle: "Next- Lab Report Details ")
      ),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.paddingSizeLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
                  "Lab Report Details",
                  style: AppTheme.getAppTheme().textTheme.displayMedium,
                ),
                 SizedBox(height: 20,),
                InputField(title: "Report ID/Number",),
                InputField(title:"Report Date"),
                InputField(title: "Lab Name"),
                InputField(title: "Doctor Name"),
                 SizedBox(height:150),
                   InkWell(
                    onTap: (){
                       Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => ScreenThree()));
                    },
                     child: Button(text: "Next",icon:Icon(Icons.arrow_forward_ios, color: AppColor.white,)),
                   )
          ],
        ),
      ),
    );
  }
}
