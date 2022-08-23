import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/nftListView.dart';
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
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top:230,),
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return Row(
                  children: [
                    SizedBox(
                      width: 240,
                      height: 240,
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Colors.white,
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(
                            width: 0.1
                          )
                        ),
                        child: Stack(
                          children: [
                            Image.asset("images/nft-composition-with-popular-artworks.jpg", fit: BoxFit.cover, height: 120, width: 240,),
                            Align(
                              alignment: Alignment.centerRight,
                              child: SizedBox(
                                width:50,
                                height: 50,
                                child: Card(
                                  child: Icon(CupertinoIcons.heart),
                                  color: Colors.white,
                                  elevation: 5.0,
                                  shape: CircleBorder(),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 50.0),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                  width:50,
                                  height: 50,
                                  child: Card(
                                    child: Icon(CupertinoIcons.paperplane),
                                    color: Colors.white,
                                    elevation: 5.0,
                                    shape: CircleBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15.0,top: 60.0),
                                child: Text("Alenn Design", style: TextStyle(fontSize: 18.0, color: Color(0xFF9a9fa3)),),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0,bottom: 45.0),
                                    child: Text("NFT Table", style:  TextStyle(fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15.0,bottom: 45.0),
                                    child: Row(
                                      children: [
                                        Icon(CupertinoIcons.bitcoin, color: Color(0xFFFFD700),),
                                        Text("0.0044BTC", style: TextStyle(color: Color(0xFFFFD700),fontSize: 15.0, fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
