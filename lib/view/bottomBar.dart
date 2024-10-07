import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:water_app/view/home.dart';
import 'package:water_app/view/user_profile.dart';

class AnimatedBottomBar extends StatefulWidget {
  AnimatedBottomBar({Key? key}) : super(key: key);
 
  @override
  State<AnimatedBottomBar> createState() => _AnimatedBottomBarState();
}
 
class _AnimatedBottomBarState extends State<AnimatedBottomBar> {
  // list of icons that required
  // by animated navigation bar
  List<IconData> iconList = [ 
    Icons.home,
    Icons.person,
    Icons.chat_bubble,
    Icons.favorite
  ];
   
  // default index of the tabs 
  int _bottomNavIndex = 0; 
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      home: Scaffold( 
        body:  IndexedStack(
        index: _bottomNavIndex, // Display the correct screen based on the selected index
        children: [
          Home(),
          UserProfile(),
        
        ],
      ),
        floatingActionButton: FloatingActionButton(
         
            child: Icon(Icons.add,
            color: Colors.white,
           
            
            ),
             backgroundColor: Colors.red, 
              shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
            onPressed: () {
               
            }
            
            ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        
        bottomNavigationBar: AnimatedBottomNavigationBar( // navigation bar
          icons: iconList,
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.center,
          notchMargin: 10 ,
          
       
         notchSmoothness: NotchSmoothness.verySmoothEdge,
       
          onTap: (index) => setState(() => _bottomNavIndex = index),
          backgroundColor: Colors.red,
          activeColor: Colors.white,
           inactiveColor: Colors.white,
        ),
      ),
    );
  }
}