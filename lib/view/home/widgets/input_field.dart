import 'package:code_healers_sih/resources/color.dart';
import 'package:code_healers_sih/resources/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  String title;
   InputField({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: Dimensions.paddingSizeDefault),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
          ),
          Text(title),
          SizedBox(height: 10),
          Container(
              height: 40,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColor.darkGrey,
                  ),
                  borderRadius:
                      BorderRadius.circular(Dimensions.radiusDefault)),
              child: TextFormField(
                
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 12, left:10),
                  border: InputBorder.none),
              ))
        ],
      ),
    );
  }
}
