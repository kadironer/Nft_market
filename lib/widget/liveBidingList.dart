import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LiveBidingList extends StatefulWidget {
  const LiveBidingList({Key? key}) : super(key: key);

  @override
  State<LiveBidingList> createState() => _LiveBidingListState();
}

class _LiveBidingListState extends State<LiveBidingList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, top:230,),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
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
                      side: const BorderSide(
                          width: 0.1
                      )
                  ),
                  child: Stack(
                    children: [
                      Image.asset("images/nft-composition-with-popular-artworks.jpg", fit: BoxFit.cover, height: 120, width: 240,),
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
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 15.0,bottom: 45.0),
                              child: Text("NFT Table", style:  TextStyle(fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15.0,bottom: 45.0),
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
                                width:125,
                                height: 40,
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
                                width:90,
                                height: 40,
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
          );
        },
      ),
    );
  }
}
