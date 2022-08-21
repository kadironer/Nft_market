import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft_market/nftListView.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Container(
                  child: Icon(
                    CupertinoIcons.search,
                    color: Colors.black,
                    size: 30.0,
                  ),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 6.0,
                        offset: Offset(0,2),
                      )
                    ]
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(
                    child: Icon(
                      Icons.notifications_outlined,
                      color: Colors.black,
                      size: 30.0,
                    ),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 6.0,
                            offset: Offset(0,2),
                          )
                        ]
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      body: ListViewDeneme(),
    );
  }
}
