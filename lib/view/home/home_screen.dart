import 'package:code_healers_sih/resources/color.dart';
import 'package:code_healers_sih/resources/dimensions.dart';
import 'package:code_healers_sih/utils/app_constants.dart';
import 'package:code_healers_sih/view/home/widgets/scrollable_list.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:svg_flutter/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
          //  height: 200,
          
          decoration: BoxDecoration(
            
           color: AppColor.appBarColor,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(Dimensions.radiusExtraLarge),bottomRight: Radius.circular(Dimensions.radiusExtraLarge))
          ),
            width: double.infinity,
           
            padding: EdgeInsets.symmetric(horizontal:Dimensions.paddingSizeLarge,vertical: Dimensions.paddingSizeLarge),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("All Services for your",style: Theme.of(context).textTheme.titleLarge!.copyWith(letterSpacing: 1,color: AppColor.black.withOpacity(0.8)),),
                Text("health",style: Theme.of(context).textTheme.titleLarge!.copyWith(letterSpacing: 1,color: AppColor.black.withOpacity(0.8)),),
                Gap(5),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: AppColor.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(0, 5),
                  )
                ],
              ),
              child: TextFormField(
                scrollPadding: EdgeInsets.zero,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.zero,
                        prefixIcon: Icon(Icons.search,size: 20,color:AppColor.black.withOpacity(0.5) ,),
                        hintText: "Search",
                      //  enabled: true,
                        hintStyle: Theme.of(context).textTheme.displayMedium!.copyWith(color: AppColor.lightBlack),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(Dimensions.radiusExtraOverLarge),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(Dimensions.radiusExtraOverLarge),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(Dimensions.radiusExtraOverLarge),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        filled: true,
                        fillColor: AppColor.white,                        
                    ),
                  ),
            ),
          
              ],
            ),
          ),
    
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeDefault),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(10),
                Text("Top Specialities",style: Theme.of(context).textTheme.titleMedium,),
                Gap(10),
                Container(
                  padding: EdgeInsets.all(Dimensions.paddingSizeLarge),
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(Dimensions.radiusExtraLarge),
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.black.withOpacity(0.1),
                        blurRadius: 10,
                        spreadRadius: 1,
                        offset: Offset(0, 5),
                      )
                    ],
                  ),
                  child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text("Get your lab reports Result now",style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: AppColor.lightBlack,
                            ),),
                          ],
                        ),
                      ),
                      Gap(10),
                      SvgPicture.asset("assets/homescreen/test_report_icon.svg")
                    ],
                  ),
                ),
                const Gap(15),
                ScrollableList(featuresIcon: Appconstants.featuresIcon, featuresName: Appconstants.featuresName),
    
    Gap(10),
                Text("Category",style: Theme.of(context).textTheme.titleMedium,),
              Gap(10),
              ScrollableList(featuresIcon: Appconstants.categoryIcon, featuresName: Appconstants.categoryName)
              ],
            ),
          )
        ],
      );
  }
}