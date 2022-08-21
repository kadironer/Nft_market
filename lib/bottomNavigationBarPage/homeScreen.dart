import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../nftListView.dart';
import '../widget/bannerContainer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 75,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("NFT Market", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 30),),
            Row(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: Card(
                    color: Colors.white,
                    shadowColor: Colors.black,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Icon(
                      CupertinoIcons.search,
                      color: Colors.black,
                      size: 30.0,
                    ),
                  ),
                ),

                SizedBox(
                  width: 50,
                  height: 50,
                  child: Card(
                    color: Color(0xFFf8f8fa),
                    shadowColor: Colors.black,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Icon(
                      CupertinoIcons.bell,
                      color: Colors.black,
                      size: 30.0,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),

      body: Stack(
        children: [
          ListViewDeneme(),
          Column(
            children: [
              BannerContainer(),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 15.0,right: 15.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Live Biding",style: TextStyle(color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        child: Text("See all", style: TextStyle(fontSize: 20.0, color: Color(0xFF9a9fa3)),),
                        onPressed:(){},
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
