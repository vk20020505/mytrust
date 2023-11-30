import 'package:flutter/material.dart';
import 'package:mytrust/historyPage.dart';
import 'package:mytrust/homePage.dart';
import 'package:mytrust/navBar.dart';
import 'package:mytrust/offerPage.dart';
import 'package:mytrust/profilePage.dart';

import 'nav_model.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final homeNavKey = GlobalKey<NavigatorState>();
  final offerNavKey = GlobalKey<NavigatorState>();
  final historyNavKey = GlobalKey<NavigatorState>();
  final profileNavKey = GlobalKey<NavigatorState>();

  int selectedTab = 0;
  List<NavModel> items = [];

  @override
  void initState() {
    // TODO: implement initState  
    super.initState();
    items = [
      NavModel(page: const MyHomePage(), navKey: homeNavKey),
      NavModel(page: const HistoryPage(), navKey: historyNavKey),
      NavModel(page: const OfferPage(), navKey: offerNavKey),
      NavModel(page: const ProfilePage(), navKey: profileNavKey),
    ];
  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        if(items[selectedTab].navKey.currentState?.canPop() ?? false){
          items[selectedTab].navKey.currentState?.pop();
          return Future.value(false);
        }else{
          return Future.value(true);
        }

      },
      child: Scaffold(
         resizeToAvoidBottomInset: false, 
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: CircleAvatar(radius: 25, backgroundColor: Colors.white,
        child: Image(
          color: Colors.green.shade800,
          height: 28,
          image: const AssetImage('assets/images/qr-code.png')),),
        body: IndexedStack(
          index: selectedTab,
          children: items.map((page) => Navigator(
            key: page.navKey,   
            onGenerateInitialRoutes: (navigator, initialRoute){
              return [
                MaterialPageRoute(builder: (context)=> page.page),
              ];
            },
          )
          ).toList()
        ),
          bottomNavigationBar: NavBar(
            pageIndex: selectedTab,
            onTap: (index){
              if(index == selectedTab){
                items[index].navKey.currentState?.popUntil((route) => route.isFirst);
              }else{
                setState(() {
                  selectedTab = index;
                });
              }
            },
             ),
      ),
    );
  }
}





