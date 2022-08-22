import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft_market/bottomNavigationBarPage/profile%20Page.dart';
import 'package:nft_market/bottomNavigationBarPage/search.dart';
import 'package:nft_market/bottomNavigationBarPage/statisticPage.dart';
import 'bottomNavigationBarPage/homeScreen.dart';


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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF4983ff),
        child: Icon(Icons.add),
        onPressed:(){
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 10.0,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed:(){
                      setState((){
                        selectedIndex=0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(selectedIndex==0 ? CupertinoIcons.house_alt_fill : CupertinoIcons.house_alt,
                        color: selectedIndex==0 ? Color(0xFF4983ff) : Color(0xFF9a9fa3),
                        ),
                        Text("Home",
                          style: TextStyle(
                            color: selectedIndex==0 ? Color(0xFF4983ff) : Color(0xFF9a9fa3),
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed:(){
                      setState((){
                        selectedIndex=1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(CupertinoIcons.search,
                          color: selectedIndex==1 ? Color(0xFF4983ff) : Color(0xFF9a9fa3),
                        ),
                        Text("Search",
                          style: TextStyle(
                              color: selectedIndex==1 ? Color(0xFF4983ff) : Color(0xFF9a9fa3),
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed:(){
                      setState((){
                        selectedIndex=2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(CupertinoIcons.waveform_path_ecg,
                          color: selectedIndex==2 ? Color(0xFF4983ff) : Color(0xFF9a9fa3),
                        ),
                        Text("Statistic",
                          style: TextStyle(
                              color: selectedIndex==2 ? Color(0xFF4983ff) : Color(0xFF9a9fa3),
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed:(){
                      setState((){
                        selectedIndex=3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(selectedIndex==3 ?  CupertinoIcons.person_fill : CupertinoIcons.person,
                          color: selectedIndex==3 ? Color(0xFF4983ff) : Color(0xFF9a9fa3),
                        ),
                        Text("Profile",
                          style: TextStyle(
                              color: selectedIndex==3 ? Color(0xFF4983ff) : Color(0xFF9a9fa3),
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}




