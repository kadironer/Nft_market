import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft_market/bottomNavigationBarPage/profile%20Page.dart';
import 'package:nft_market/bottomNavigationBarPage/search.dart';
import 'package:nft_market/bottomNavigationBarPage/statisticPage.dart';
import 'bottomNavigationBarPage/homeScreen.dart';
import 'package:floating_bottom_bar/animated_bottom_navigation_bar.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var bottomNavigationBarPageList=[HomeScreen(),Search(),StatisticPage(),ProfilePage()];
  var selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomNavigationBarPageList[selectedIndex],

      bottomNavigationBar: AnimatedBottomNavigationBar(
        bottomBarItems: [
          BottomBarItemsModel(
            icon: Icon(Icons.home, color: Color(0xFF9a9fa3),),
            title: "Home",
            iconSelected: Icon(Icons.home, color: Color(0xFF4f7ae2),),
            dotColor: Color(0xFF4f7ae2),
            onTap:(){
            }
          ),
          BottomBarItemsModel(
              icon: Icon(Icons.search, color: Color(0xFF9a9fa3),),
              title: "Search",
              iconSelected: Icon(Icons.search, color: Color(0xFF4f7ae2),),
              dotColor: Color(0xFF4f7ae2),
              onTap:(){
              }
          ),
          BottomBarItemsModel(
              icon: Icon(Icons.line_axis_outlined, color: Color(0xFF9a9fa3),),
              title: "Statistic",
              iconSelected: Icon(Icons.line_axis_outlined, color: Color(0xFF4f7ae2),),
              dotColor: Color(0xFF4f7ae2),
              onTap:(){
              }
          ),
          BottomBarItemsModel(
              icon: Icon(Icons.person, color: Color(0xFF9a9fa3),),
              title: "Profile",
              iconSelected: Icon(Icons.person, color: Color(0xFF4f7ae2),),
              dotColor: Color(0xFF4f7ae2),
              onTap:(){
              }
          ),
        ],
        bottomBarCenterModel: BottomBarCenterModel(
          centerBackgroundColor: Color(0xFF4f7ae2),
          centerIcon: FloatingCenterButton(
            child: Icon(Icons.add),
          ),
            centerIconChild: [
          FloatingCenterButtonChild(
            child: const Icon(
              Icons.home,
              color: AppColors.white,
            ),
            onTap: () {},
          ),
        ]
        ),
      )
    );
  }
}
