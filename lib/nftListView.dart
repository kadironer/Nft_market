import 'package:flutter/material.dart';

class ListViewDeneme extends StatelessWidget {
  ListViewDeneme({Key? key}) : super(key: key);


  var nftCategories=["All NFT's","Solana NFT's","Art","Collectibes","Domain Names","Music","Photography","Sports","Trading Cards","Utility","Virtual Worlds"];

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
                      child: Text(nftCategories[index], style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
                  ),
                  width: 120,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow:[
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
