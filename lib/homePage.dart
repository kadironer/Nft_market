import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft_market/nftListView.dart';
import 'package:nft_market/widget/bannerContainer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


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
          BannerContainer(),
        ],
      ),

    );
  }
}
