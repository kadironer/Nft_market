import 'package:flutter/material.dart';

class ListViewDeneme extends StatelessWidget {
  ListViewDeneme({Key? key}) : super(key: key);


  var nftCategories=["All NFT's","Solana NFT's","Art","Collectibes","Domain Names","Music","Photography","Sports","Trading Cards","Utility","Virtual Worlds"];
  var nftImages=["travel-front-premium.png","bag-front-premium.png","color-palatte-front-premium.png","bookmark-fav-front-premium.png","fire-front-premium.png","headphone-front-premium.png","camera-front-premium.png","sphere-front-premium.png","card-front-premium.png","bulb-front-premium.png","crow-front-premium.png"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: nftCategories.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0,top: 15.0),
                child: Container(
                  child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: 30,
                              height: 30,
                              child: Image.asset("images/${nftImages[index]}"),),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(nftCategories[index], style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),),
                          ),
                        ],
                      )
                  ),
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow:const [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(0,1),
                        blurRadius: 1.0,
                      )
                    ]
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
