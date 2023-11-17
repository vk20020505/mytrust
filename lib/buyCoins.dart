import 'package:flutter/material.dart';

import 'sellCoins.dart';

class BuyCoin extends StatefulWidget {
  const BuyCoin({super.key});

  @override
  State<BuyCoin> createState() => _BuyCoinState();
}

class _BuyCoinState extends State<BuyCoin> {

  List buttonText = ['1','2','3','4','5','6','7','8','9','.','0','*'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Coins', style: TextStyle(color: Colors.white, fontSize: 20),),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical:13.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 5),
                shape: StadiumBorder(),
                backgroundColor: Colors.amber.shade200
              ),
              onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const SellCoin();
                    }),
                  );
              }, child: Text('Sell Coins', style: TextStyle(color: Colors.amber, fontSize: 13, fontWeight: FontWeight.bold))),
          )
          
   
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:8.0),
        child: Column(
          children: [
            Divider(color: Colors.amber,thickness: 1,),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:25.0),
                  child: Text('Coin Amount', style: TextStyle(color: Colors.white),),
                ),
                Text('0.00 COINS', style: TextStyle(color: Colors.white,fontSize: 30),),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:25.0),
                  child: Text('Min 10 - Max10000', style: TextStyle(color: Colors.white),),
                ),
                Text('Available Coins : 2000', style: TextStyle(color: Colors.white),)
              ],
            ),
            

                 Padding(
               padding: const EdgeInsets.symmetric(vertical:25.0),
                   child: Divider(color: Colors.amber,thickness: 1,),
                 ),
                 Container(
                  // height: 150,
                   child: GridView.builder(
                    padding: EdgeInsets.only(top: 35, bottom: 20),
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 2,
                       crossAxisCount: 3,
                     ),
                     itemCount: buttonText.length,
                     itemBuilder: (BuildContext context, int index) {
                       return TextButton(
                        onPressed: (){},
                        child: Text(buttonText[index], style: TextStyle(color: Colors.amber, fontSize: 18),));
                     },
                   ),
                 ),

                 ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(color: Colors.white),
                    fixedSize: Size(270, 40),
                    backgroundColor: Colors.amber),
                  onPressed: (){}, child: Text('PREVIEW BUY'))
          ],
        ),
      ),
    );
  }
}