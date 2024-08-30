import 'package:code_healers_sih/resources/color.dart';
import 'package:code_healers_sih/resources/dimensions.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Searchbar extends StatelessWidget {
  String Hint;
  bool isicon;
   Searchbar({
    super.key,
    required this.isicon,
    required this.Hint,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(Dimensions.radiusExtraLarge),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: isicon ?  Icon(Icons.search):null,
          hintText: Hint,
          contentPadding: isicon? EdgeInsets.symmetric(horizontal: 16, vertical: 5):EdgeInsets.only(left: 16, bottom:10 ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
