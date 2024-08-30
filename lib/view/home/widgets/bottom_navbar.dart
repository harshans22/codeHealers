import 'package:code_healers_sih/resources/color.dart';
import 'package:code_healers_sih/view/home/Profile_screen.dart';
import 'package:code_healers_sih/view/home/Scanning_screen.dart';
import 'package:code_healers_sih/view/home/widgets/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNavBar extends StatefulWidget {
   


  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {

    final List<Widget> _screens = [
     HomeScreen(),
     ScanningScreen(),
     ProfileScreen()
    ];

    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        items: <Widget>[
          Image.asset("assets/homescreen/Vector 207.png"),
          Image.asset("assets/homescreen/Group 284.png"),
          Image.asset("assets/homescreen/Group 285.png"),
         
        ],
        color: AppColor.darkBlue,
        buttonBackgroundColor: AppColor.BG_COLOR,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: _screens[_page], 
    );
  }
}
