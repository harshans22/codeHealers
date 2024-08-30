import 'package:code_healers_sih/resources/color.dart';
import 'package:code_healers_sih/resources/dimensions.dart';
import 'package:code_healers_sih/resources/theme.dart';
import 'package:code_healers_sih/view/home/widgets/search_bar.dart';
import 'package:code_healers_sih/view/home/widgets/symptom_container.dart';
import 'package:flutter/material.dart';

class SymptomsScreen extends StatefulWidget {
  const SymptomsScreen({super.key});

  @override
  State<SymptomsScreen> createState() => _SymptomsScreenState();
}

class _SymptomsScreenState extends State<SymptomsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: AppColor.lightBlue.withOpacity(0.1),
        title: Searchbar(isicon: true, Hint: "Symptoms"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.paddingSizeLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Text(
                  "Add your Symptoms",
                  style: AppTheme.getAppTheme().textTheme.displayLarge?.copyWith(fontWeight: FontWeight.w700),
                ),
                SizedBox(height:10),
                Text("Commn Symptoms", style: AppTheme.getAppTheme().textTheme.displayMedium?.copyWith(color:Colors.black.withOpacity(0.5))),
                SizedBox(height: 20,),
               Column(
  children: [
    Wrap(
      spacing: 10.0,
      runSpacing: 10.0, 
      alignment: WrapAlignment.start, 
      children: [
        SymptomContainer(symptom: "Fever"),
        SymptomContainer(symptom: "Cough and Sore Throat"),
        SymptomContainer(symptom: "Headache"),
        SymptomContainer(symptom: "Headache"),
        SymptomContainer(symptom: "Body Ache and Fatigue"),
        SymptomContainer(symptom: "Cold and Runny Nose")
      ],
    ),
  ],
  
),
  SizedBox(height: 20,),
                Text("Body Parts", style: AppTheme.getAppTheme().textTheme.displayMedium?.copyWith(color:Colors.black.withOpacity(0.5))),
                 SizedBox(height: 20,),
                 Column(
  children: [
    Wrap(
      spacing: 10.0,
      runSpacing: 10.0, 
      alignment: WrapAlignment.start, 
      children: [
        SymptomContainer(symptom: "Abdomen"),
        SymptomContainer(symptom: "Ankle"),
        SymptomContainer(symptom: "Back"),
        SymptomContainer(symptom: "Chest"),
        SymptomContainer(symptom: "Ears"),
        SymptomContainer(symptom: "Elbows"),
        SymptomContainer(symptom: "Eyes"),
        SymptomContainer(symptom: "Feet"),
        SymptomContainer(symptom: "Hands"),
        SymptomContainer(symptom: "Head"),
        SymptomContainer(symptom: "Hips"),
        SymptomContainer(symptom: "Knee"),
        SymptomContainer(symptom: "Mouth"),
        SymptomContainer(symptom: "Neck"),
        SymptomContainer(symptom: "Shoulders")
      ],
    ),
  ],
  
),
          ],
        ),
      ),
    );
  }
}

