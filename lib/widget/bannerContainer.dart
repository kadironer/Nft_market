import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BannerContainer extends StatelessWidget {
  const BannerContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, top: 90.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Container(
              width: double.infinity,
              height: 150,
              child: Stack(
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Image.asset("images/gradient_bg.png",)
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,top: 10.0),
                    child: Text("Collect and Sell\nextraordinars NFT's",style: TextStyle(color: Colors.white,fontSize: 25, fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0,left: 20.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Row(
                        children: [
                          Icon(
                            CupertinoIcons.play_circle_fill,
                            color: Colors.white,
                            size: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text("Learn More",style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFF6002b0),
                      Color(0xFF8a02be),
                    ]
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
