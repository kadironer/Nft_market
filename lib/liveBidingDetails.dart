import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft_market/widget/liveBindingListView.dart';

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
        centerTitle: true,
        title: Text("Live Biding",style: TextStyle(color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black,),
          onPressed:(){
            Navigator.pop(context);
          },
        ),
      ),
      body: LiveBindingListView(),
    );
  }
}
