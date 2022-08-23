import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LiveBidingDetails extends StatefulWidget {
  const LiveBidingDetails({Key? key}) : super(key: key);

  @override
  State<LiveBidingDetails> createState() => _LiveBidingDetailsState();
}

class _LiveBidingDetailsState extends State<LiveBidingDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text("Live Biding",style: TextStyle(color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black,),
          onPressed:(){
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 8,
        scrollDirection: Axis.vertical,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 360,
                  height: 340,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.white,
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: const BorderSide(
                            width: 0.1
                        )
                    ),
                    child: Stack(
                      children: [
                        Image.asset("images/nft-composition-with-popular-artworks.jpg", fit: BoxFit.cover, height: 170, width: 360,),
                        const Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                            width:50,
                            height: 50,
                            child: Card(
                              color: Colors.white,
                              elevation: 5.0,
                              shape: CircleBorder(),
                              child: Icon(CupertinoIcons.heart),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 50.0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                              width:50,
                              height: 50,
                              child: Card(
                                color: Colors.white,
                                elevation: 5.0,
                                shape: CircleBorder(),
                                child: Icon(CupertinoIcons.paperplane),
                              ),
                            ),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 15.0,top: 60.0),
                            child: Text("Alenn Design", style: TextStyle(fontSize: 18.0, color: Color(0xFF9a9fa3)),),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 15.0,top: 150.0),
                                child: Text("NFT Table", style:  TextStyle(fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15.0,top: 150.0),
                                child: Row(
                                  children: const [
                                    Icon(CupertinoIcons.bitcoin, color: Color(0xFFFFD700),),
                                    Text("0.0044BTC", style: TextStyle(color: Color(0xFFFFD700),fontSize: 15.0, fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0,bottom: 5.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width:215,
                                  height: 60,
                                  child: Card(
                                    elevation: 1.0,
                                    color: const Color(0xFFefeef6),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20.0,),
                                        side: const BorderSide(
                                            width: 0.1
                                        )
                                    ),
                                    child: const Center(child: Text("4h 17m 31s Left", style: TextStyle(color: Color(0xFF7f92a0),fontWeight: FontWeight.bold),)),
                                  ),
                                ),


                                SizedBox(
                                  width:120,
                                  height: 60,
                                  child: Card(
                                    elevation: 1.0,
                                    color: const Color(0xFF4983ff),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20.0,),
                                        side: const BorderSide(
                                            width: 0.1
                                        )
                                    ),
                                    child: const Center(child: Text("Place a bid", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
