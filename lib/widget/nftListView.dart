import 'package:flutter/material.dart';

class ListViewDeneme extends StatelessWidget {
  ListViewDeneme({Key? key}) : super(key: key);


  var nftCategories=["All NFT's","Solana NFT's","Art","Collectibes","Domain Names","Music","Photography","Sports","Trading Cards","Utility","Virtual Worlds"];
  var nftImages=["travel-front-premium.png","bag-front-premium.png","color-palatte-front-premium.png","bookmark-fav-front-premium.png","fire-front-premium.png","headphone-front-premium.png","camera-front-premium.png","sphere-front-premium.png","card-front-premium.png","bulb-front-premium.png","crow-front-premium.png"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: nftCategories.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0,top: 15.0),
                child: SizedBox(
                  width: 160,
                  height: 50,
                  child: Card(
                    color: Color(0xFFf8f8fa),
                    shadowColor: Colors.black,
                    elevation: 3.0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black,
                        width: 0.1
                      ),
                      borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/${nftImages[index]}",width: 25,),
                        SizedBox(width: 5,),
                        Text(nftCategories[index],style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                )
              )
            ],
          ),
        );
      },
    );
  }
}
