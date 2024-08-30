import 'package:code_healers_sih/resources/color.dart';
import 'package:code_healers_sih/resources/dimensions.dart';
import 'package:code_healers_sih/resources/theme.dart';
import 'package:code_healers_sih/view/home/widgets/Screen_1.dart';
import 'package:code_healers_sih/view/home/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class ScanningScreen extends StatelessWidget {
  const ScanningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.lightBlue.withOpacity(0.1),
        toolbarHeight: 100,
        title: Searchbar(Hint: "Add Reports manually", isicon:false),
      ),
    body: Padding(
      padding: const EdgeInsets.all(Dimensions.paddingSizeLarge),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
                  "History Reports",
                  style: AppTheme.getAppTheme().textTheme.displayMedium,
                ),
                SizedBox(height:20),
                InkWell(
                  onTap: (){
                     Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => ScreenOne()));
                  },
                  child: Card(
                  elevation: 5.0,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 30, right: 8, left: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                              Flexible(
                          flex: 1,
                          child:  CircleAvatar(
                            backgroundColor: AppColor.white,
                            child: Icon(Icons.check, color: AppColor.lightBlue,),
                          )
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              Text(
                                "Blood Test Scan",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: AppTheme.getAppTheme().textTheme.displayMedium,
                              ),
                              Text("Ready - 8 months ago")
                            ],
                          ),
                        ),
                        
                  
                      ],
                    ),
                  ),
                                ),
                ),
        ],
      ),
    )
    );
  }
}
