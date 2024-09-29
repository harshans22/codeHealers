import 'package:code_healers_sih/resources/color.dart';
import 'package:code_healers_sih/resources/dimensions.dart';
import 'package:code_healers_sih/view/home/home_screen.dart';
import 'package:code_healers_sih/view/profile/profile_screen.dart';
import 'package:code_healers_sih/view/test/ocr_screen.dart';
import 'package:code_healers_sih/view/test/test_form_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
    int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  List<Widget> screens=[
    HomeScreen(),
    TestFormScreen(),
    ProfileScreen()
  ];

  // Function to build each navigation item with optional shadow
  Widget _buildNavItem(String assetPath, int index) {
    bool isSelected = _page == index; // Check if the item is selected

    return Container(
      padding: EdgeInsets.all(isSelected? Dimensions.paddingSizeSmall:0),
      height:isSelected? 50:25,
        width:isSelected? 50:25,
      decoration: isSelected
          ? BoxDecoration(
              color: Colors.white, // Adjust color as needed
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Shadow color
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3), // Offset of the shadow
                ),
              ],
            )
          : null,
      child: FittedBox(
        fit: BoxFit.contain,
        child: SvgPicture.asset(
          assetPath,
          
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
  

    return Center(
      child: ConstrainedBox(
        constraints:const BoxConstraints(
          maxWidth: 360,
        ),
        child: SafeArea(
          child: Scaffold(
            bottomNavigationBar: CurvedNavigationBar(
              color:AppColor.appBarColor,
              backgroundColor: Colors.transparent,
              buttonBackgroundColor: Colors.white10,
              height: 50,
                key: _bottomNavigationKey,
                items: <Widget>[
                   _buildNavItem("assets/navbar/home.svg", 0),
            _buildNavItem("assets/navbar/ocr.svg", 1),
            _buildNavItem("assets/navbar/profile.svg", 2),
                ],
                onTap: (index) {
                  setState(() {
                    _page = index;
                  });
                },
              ),
              body: screens[_page],
          ),
        ),
      ),
    );
  }
}