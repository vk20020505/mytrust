import 'package:flutter/material.dart';
import 'package:mytrust/CareSupreme.dart';
import 'package:mytrust/buyCoins.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:5.0, vertical: 15),
      child: Column(
        children: [
          ListTile(
            tileColor: Colors.white24,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return BuyCoin();
              }));
            },
            title: Text('Buy Coin', style: TextStyle(color: Colors.amber, fontSize: 18),),
            trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.amber,size: 15,),
          ),
             Padding(
               padding: const EdgeInsets.symmetric(vertical:5.0),
               child: ListTile(
                tileColor: Colors.white24,
                       onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return BuyCoin();
                }));
                       },
                       title: Text('Sell Coin', style: TextStyle(color: Colors.amber, fontSize: 18),),
                       trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.amber,size: 15,),
                     ),
             ),
             ListTile(
              tileColor: Colors.white24,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return CareSupreme();
              }));
            },
            title: Text('Buy Policy', style: TextStyle(color: Colors.amber, fontSize: 18),),
            trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.amber,size: 15,),
          )
        ],
    
      ),
    );
  }
}