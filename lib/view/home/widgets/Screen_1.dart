import 'package:code_healers_sih/resources/color.dart';
import 'package:code_healers_sih/resources/dimensions.dart';
import 'package:code_healers_sih/resources/theme.dart';
import 'package:code_healers_sih/view/home/widgets/Appbar_row.dart';
import 'package:code_healers_sih/view/home/widgets/Button.dart';
import 'package:code_healers_sih/view/home/widgets/Screen_2.dart';
import 'package:code_healers_sih/view/home/widgets/input_field.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  backgroundColor: AppColor.lightBlue.withOpacity(0.1),
  toolbarHeight: 100,
  title:Appbar(image: "assets/homescreen/Group 284.png", number: "1/3", title: "Personal Information", subtitle: "Next- Lab Report Details "),
),
body: Padding(
  padding: const EdgeInsets.all(Dimensions.paddingSizeLarge),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
        Text(
                  "Personal Information",
                  style: AppTheme.getAppTheme().textTheme.displayMedium,
                ),
                SizedBox(height: 20,),
                InputField(title: "Patient Name",),
                InputField(title:"Date of Birth"),
                InputField(title: "Gender"),
                InputField(title: "Age"),
                SizedBox(height:150),
                   InkWell(
                    onTap: (){
                       Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => ScreenTwo()));
                    },
                     child: Button(text: "Next",icon:Icon(Icons.arrow_forward_ios, color: AppColor.white,)),
                   )
    ],
  ),
),
    );
  }
}

