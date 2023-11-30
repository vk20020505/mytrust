import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mytrust/CareSupreme.dart';
import 'package:mytrust/drawer.dart';
import 'package:mytrust/jitendraHomePage.dart';
import 'package:pie_chart/pie_chart.dart';

import 'creditScore.dart';
import 'loanEmiCalculator.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  




  Widget divider() {
    return Container(
      width: double.maxFinite,
      height: 2,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.purple,
        Colors.orangeAccent,
        Colors.purple,
        Color.fromARGB(255, 73, 163, 237)
      ])),
    );
  }

  int current = 0;
  @override
  Widget build(BuildContext context) {

    Map<String, double> dataMap = {
      "Flutter": 3,
      "React": 2,
      "Xamarin": 2,
      "Ionic": 2,
    };
    final colorList = <Color>[
      const Color.fromARGB(255, 68, 224, 255),
      Colors.purpleAccent,
      Colors.red,
      Colors.orange
    ];

    final CarouselController controller = CarouselController();
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;

    List<Map<String, String>> sliderContents = [
      {'image': 'assets/images/image.jpg'},
      {'image': 'assets/images/image.jpg'},
      {'image': 'assets/images/image.jpg'},
      {'image': 'assets/images/image.jpg'},
      {'image': 'assets/images/image.jpg'},
    ];

    List<Map<String, dynamic>> appTabList = [
      {'image': 'assets/images/badge.png', 'title': 'Profile\n Badge'},
      {
        'image': 'assets/images/robot.png',
        'title': 'AI\n Robots',
      },
      {
        'image': 'assets/images/coins.png',
        'title': 'Buy\n Coins',
      },
      {
        'image': 'assets/images/wallet.png',
        'title': 'Pay\n Later',
      },
    ];

    List<Map<String, dynamic>> tabList = [
      {
        'image': 'assets/images/file.png',
        'title': 'Transaction History',
        'color': [Colors.yellow, Colors.green]
      },
      {
        'image': 'assets/images/bitcoin.png',
        'title': 'Purchased Coins',
        'color': [Colors.orange, Colors.purple]
      },
      {
        'image': 'assets/images/bot.png',
        'title': 'Purchased Robots',
        'color': [Colors.yellowAccent, Colors.orange, Colors.red]
      },
      {
        'image': 'assets/images/user.png',
        'title': 'Your Profile',
        'color': [Colors.yellow, Colors.orange, Colors.indigo]
      },
    ];

        List<Map<String, dynamic>> targetTaskList = [
      {
        'image': 'assets/images/money-bag.png',
        'title': 'Goal1',
        'percent':30,
        'total': 20,
        'color': Colors.amber
        
      },
      {
        'image': 'assets/images/money-bag.png',
        'title': 'Goal2',
        'percent':50,
        'total': 20,
         'color': Colors.white
      },
      
    ];
    List<Map<String, dynamic>> CareerList = [
       {
        'image': 'assets/images/indicator.png',
        'title': 'Sweeper',
      },
         {
        'image': 'assets/images/indicator.png',
        'title': 'Data Entry  Operator',
      },
         {
        'image': 'assets/images/indicator.png',
        'title': 'Electrician'
      },
        {
        'image': 'assets/images/indicator.png',
        'title': 'Sweeper',
      },
         {
        'image': 'assets/images/indicator.png',
        'title': 'Data Entry Operator',
      },
         {
        'image': 'assets/images/indicator.png',
        'title': 'Electrician'
      },

    ];


    List<Map<String, dynamic>> financialtoolList = [
      {
        'image': 'assets/images/indicator.png',
        'title': 'Check Your Civil Score',
        'color': [const Color.fromARGB(255, 68, 224, 255), Colors.black],
        'page': Calculator()
      },
      {
        'image': 'assets/images/calculator.png',
        'title': 'Loan EMI Calculator',
        'color': [const Color.fromARGB(255, 104, 58, 183), Colors.black],
         'page': LoanEmiCalculatotr()
      },
      {
        'image': 'assets/images/budget.png',
        'title': 'Financial Interest Calculator',
        'color': [
          Colors.red.shade200,
          Colors.black,
        ],
        'page': Check_Credit_Score()
      },
    ];

    List<Map<String, dynamic>> tab2 = [
      {
        'price': '2000',
        'rate': '+2.5%',
        'title': 'Balance',
        'color': [Colors.yellow, Colors.green]
      },
      {
        'price': '3000',
        'rate': '+3.5%',
        'title': 'Income',
        'color': [Colors.orange, Colors.purple]
      },
      {
        'price': '4000',
        'rate': '+4.5%',
        'title': 'Robot Earning',
        'color': [Colors.yellowAccent, Colors.orange, Colors.red]
      },
      {
        'price': '5000',
        'rate': '+2.5%',
        'title': 'Savings',
        'color': [Colors.yellow, Colors.orange, Colors.indigo]
      },
    ];

    List<Map<String, dynamic>> tab2List = [
      {'image': 'assets/images/mobile.png', 'title': 'Mobile Recharge'},
      {
        'image': 'assets/images/water.png',
        'title': 'Water Bill',
      },
      {
        'image': 'assets/images/home.png',
        'title': 'Pay Home Rent',
      },
      {
        'image': 'assets/images/globe.png',
        'title': 'Internet Bill',
      },
      {'image': 'assets/images/mobile.png', 'title': 'Mobile Recharge'},
      {
        'image': 'assets/images/water.png',
        'title': 'Water Bill',
      },
      {
        'image': 'assets/images/home.png',
        'title': 'Pay Home Rent',
      },
      {
        'image': 'assets/images/globe.png',
        'title': 'Internet Bill',
      },
    ];

    List<Map<String, dynamic>> tab3List = [
      {'image': 'assets/images/rental.png', 'title': 'Business Loan'},
      {
        'image': 'assets/images/necklace.png',
        'title': 'Gold Loan',
      },
      {
        'image': 'assets/images/city-hall.png',
        'title': 'Personal Loan',
      },
      {
        'image': 'assets/images/car.png',
        'title': 'Car Loan',
      },
    ];


    
  Widget ProgressReport(){
    return     Container(
                          padding: const EdgeInsets.only(top: 15),
                          height: 110,
                          // color: Colors.red,
                          child: ListView.builder(
                            shrinkWrap: true,
                            // physics: const NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: tab2.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                margin: const EdgeInsets.only(right: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 5),
                                        height: 65,
                                        width: 65,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                                colors: tab2[index]['color']),
                                            // color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                                width: 1, color: Colors.white)),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          // crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              '₹ ${tab2[index]['price']}',
                                              style: const TextStyle(
                                                  color: Colors.white),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 3),
                                              // width: 56,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    // '+ 8.5%',
                                                    tab2[index]['rate'],
                                                    textAlign: TextAlign.center,
                                                    style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 13),
                                                  ),
                                                  const Icon(
                                                    Icons.arrow_upward_outlined,
                                                    color: Colors.green,
                                                    size: 18,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        )),
                                    Text(
                                      tab2[index]['title'],
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                        );
  }

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        drawer: const Drawer(
          backgroundColor: Colors.black,
          child: DrawerPage(),),
        key: globalKey,
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              toolbarHeight: 100,
              backgroundColor: Colors.black,
              leadingWidth: 45,
              leading: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: InkWell(
                  onTap: () {
                    globalKey.currentState!.openDrawer();
                  },
                  child: const CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.menu,
                      color: Colors.black,
                      size: 15,
                    ),
                  ),
                ),
              ),
              title: SizedBox(
                height: 30,
                child: TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 0),
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8)),
                      prefixIconColor: Colors.black,
                      prefixIcon: const Icon(
                        Icons.search,
                      ),
                      hintStyle:
                          const TextStyle(fontSize: 12, color: Colors.black),
                      hintText:
                          'Search in Services, Products, Jobs or Community'),
                ),
              ),
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Icon(Icons.notifications),
                )
              ],
              pinned: true,
              expandedHeight: 235,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    colors: [Colors.black, Colors.orange, Colors.green],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    // stops: [0.05,0.4,0.2]
                  )),
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 90,
                      ),
                      Container(
                        width: double.infinity,
                        // color: Colors.red,
                        height: 100,
                        child: ListView.builder(
                          padding: const EdgeInsets.only(left: 30),
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: appTabList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                right: 30,
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const CareSupreme();
                                  }));
                                },
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundColor: Colors.white10,
                                      child: Image(
                                          // color: Colors.white,
                                          height: 40,
                                          image: AssetImage(
                                              appTabList[index]['image'])),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4.0),
                                      child: Text(
                                        appTabList[index]['title'],
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 11),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 8),
                            width: width * .47,
                            // height: 30,
                            decoration: BoxDecoration(
                                border: Border.all(width: 1, color: Colors.red),
                                borderRadius: BorderRadius.circular(25)),
                            child: const Text(
                              'Wallet Balance: ₹ 2000.0',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 8),
                            width: width * .47,
                            // height: 30,
                            decoration: BoxDecoration(
                                border: Border.all(width: 1, color: Colors.red),
                                borderRadius: BorderRadius.circular(25)),
                            child: const Text('Pay Later Credit: ₹ 2000.0',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SliverList.list(children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 8),
                      child: RichText(
                          textAlign: TextAlign.end,
                          text: const TextSpan(
                              text: 'Your Total Progress Report',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                              children: [
                                TextSpan(
                                  text: ' (Compared to Previous week)',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal),
                                )
                              ])),
                    ),

                    divider(),
                    const SizedBox(
                      height: 10,
                    ),

                    Container(
                      // padding: const EdgeInsets.symmetric(vertical: 5),

                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.circular(15),
                        // color: Colors.amber,
                                                        color: Colors.white12,

                      ),
                      // height: 100,
                      child: TabBar(
                          indicatorSize: TabBarIndicatorSize.label,
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.grey,
                          // labelPadding: EdgeInsets.symmetric(vertical: 5),
                          indicatorWeight: .1,
                          tabs: [
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 5.0),
                              child: Text('Weekly'),
                            ),
                            Container(
                                height: 24,
                                child: const Row(
                                  children: [
                                    Expanded(
                                      child: VerticalDivider(
                                        color: Colors.white,
                                        width: 0,
                                        thickness: 2,
                                      ),
                                    ),
                                    Text('  Monthly   '),
                                    VerticalDivider(
                                      color: Colors.white,
                                      width: 0,
                                      thickness: 2,
                                    ),
                                  ],
                                )),
                            const Text('Yearly'),
                          ]),
                    ),
                    Container(
                      height: 110,
                      // color: Colors.blue,
                      child: TabBarView(children: [
                        ProgressReport(),
                        ProgressReport(),
                        ProgressReport(),
                    
                    
                      ]),
                    ),
                    // const Divider(thickness: 3,color: Colors.red,height: 0,),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 15),
                      height: 150,
                      //  color: Colors.green,
                      child: Stack(
                        children: [
                          PieChart(
                            dataMap: dataMap,
                            // animationDuration: Duration(milliseconds: 800),
                            chartLegendSpacing: 32,
                            // chartRadius: MediaQuery.of(context).size.width / 3.2,
                            colorList: colorList,
                            initialAngleInDegree: 0,
                            chartType: ChartType.ring,
                            ringStrokeWidth: 18,
                            centerText: "Last 7 Days",
                            legendOptions: const LegendOptions(
                              showLegendsInRow: false,
                              legendPosition: LegendPosition.right,
                              showLegends: false,
                              legendShape: BoxShape.circle,
                              legendTextStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            chartValuesOptions: const ChartValuesOptions(
                              showChartValueBackground: true,
                              showChartValues: false,
                              showChartValuesInPercentage: false,
                              showChartValuesOutside: false,
                              decimalPlaces: 1,
                            ),
                            // gradientList: ---To add gradient colors---
                            // emptyColorGradient: ---Empty Color gradient---
                          ),
                          Positioned(
                            top: 20,
                            left: 14,
                            child: Row(
                              children: [
                                const Text(
                                  'Earned 20% \n more coins',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 8),
                                ),
                                SizedBox(
                                  width: 40,
                                  child: divider(),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 20,
                            left: 14,
                            child: Row(
                              children: [
                                const Text(
                                  'Referral\n Benefit 10% ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 8),
                                ),
                                SizedBox(
                                  width: 40,
                                  child: divider(),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 30,
                            right: 1,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 35,
                                  child: divider(),
                                ),
                                const Text(
                                  '40% Earn from AI \n bot',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 8),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 40,
                            right: 6,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 35,
                                  child: divider(),
                                ),
                                const Text('20% Earn from \n target',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 8),
                                    textAlign: TextAlign.center),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 65,
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: tabList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return Calculator();
                              }));
                            },
                            child: Container(
                                margin: const EdgeInsets.only(right: 28),
                                height: 45,
                                width: 65,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: tabList[index]['color']),
                                    // color: Colors.red,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        width: 1, color: Colors.white)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image(
                                        // color: Colors.white,
                                        height: 30,
                                        image:
                                            AssetImage(tabList[index]['image'])),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 3),
                                      // width: 56,
                                      child: SizedBox(
                                        width: 50,
                                        child: Text(
                                          tabList[index]['title'],
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              color: Colors.white, fontSize: 10),
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                          );
                        },
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        'Your Target Task',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                    divider(),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      // height: 171,
                      // color: Colors.amber,
                      child: ListView.separated(
                        padding: const EdgeInsets.all(0),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: targetTaskList.length,
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            height: 10,
                          );
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            padding: const EdgeInsets.all(10),
                            // margin: EdgeInsets.only(bottom:10),
                            width: double.infinity,
                            height: 75 ,
                            decoration: BoxDecoration(
                                color: Colors.white24,
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                               
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      color:targetTaskList[index]['color'].withOpacity(.2),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Image(image: AssetImage(targetTaskList[index]['image']), height:30),
                                ),
                                Container(
                                  width: width*.7,
                                  height: 60,
                                  // color: Colors.blue,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            targetTaskList[index]['title'],
                                            style:
                                                const TextStyle(color: Colors.white),
                                          ),
                                          RichText(
                                              textAlign: TextAlign.end,
                                              text:  TextSpan(
                                                  text: '₹ ${(targetTaskList[index]['percent']* targetTaskList[index]['total'])/100}00',
                                                  style: const TextStyle(
                                                      color: Colors.yellow,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  children: [
                                                    TextSpan(
                                                      text: '/${targetTaskList[index]['total']}.000',
                                                      style: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12,
                                                          fontWeight: FontWeight
                                                              .normal),
                                                    )
                                                  ]))
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8.0),
                                        child: LinearProgressIndicator(
                                          backgroundColor: Colors.grey.shade500,
                                          value: targetTaskList[index]['percent']/100,
                                          color: Colors.amber,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '${targetTaskList[index]['percent']}% of your goal',
                                            style:
                                                const TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            '${targetTaskList[index]['percent']}% ',
                                            style:
                                                const TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    // const Divider(thickness: 3,color: Colors.red,height: 0,),
                    // SizedBox(
                    //   // color: Colors.amber,
                    //   width: double.maxFinite,
                    //   // height: 210,
                    //   child: Stack(
                    //     children: [
                    //       Container(
                    //         padding: const EdgeInsets.all(15),
                    //         margin: const EdgeInsets.only(left: 20,top: 10, bottom:20 ),
                    //         width: width*.7,
                    //         height: 160,
                    //         decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(10),
                    //           gradient: const LinearGradient(
                    //             begin: Alignment.topCenter,
                    //             end: Alignment.bottomCenter,
                    //             colors: [Colors.yellow, Colors.orange, Colors.red])
                    //           ),
                    //         child: const Column(
                    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //           children: [
                    //             Row(
                    //               mainAxisAlignment: MainAxisAlignment.end,
                    //               children: [
                    //                 Column(
                    //                   children: [
                    //                   Image(
                    //                     height: 30,
                    //                     image: AssetImage('assets/images/card.png')),
                    //                     Text('mastercard', style: TextStyle(color: Colors.white, fontSize: 8),)
                    //                   ],
                    //                 )
                    //               ],
                    //             ),

                    //             Column(
                    //               crossAxisAlignment: CrossAxisAlignment.start,
                    //               mainAxisAlignment: MainAxisAlignment.end,
                    //               children: [
                    //                 Text('RAJESH KUMAR', style: TextStyle(color: Colors.black ,fontSize: 10),),
                    //                 Row(
                    //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //                   children: [
                    //                     Text('5294 2436 4780 2468', style: TextStyle(color: Colors.white, fontSize: 11, shadows: [Shadow(color: Colors.black,offset: Offset(1, 2),blurRadius: 2)],)),
                    //                     // SizedBox(width: 60,),
                    //                         Text('12/24', style: TextStyle(color: Colors.white, fontSize: 11,shadows: [Shadow(color: Colors.black,offset: Offset(1, 2),blurRadius: 2)])),
                    //                   ],
                    //                 )
                    //               ],
                    //             ),
                    //           ],
                    //         ),
                    //       ),

                    //       Positioned(
                    //         top: 77,
                    //         right: width*.14,
                    //         child: Container(
                    //           padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                    //           // width: 90,
                    //           // height: 30,
                    //           decoration: BoxDecoration(
                    //             color: Colors.orange,
                    //             border: Border.all(color: Colors.white),
                    //             borderRadius: BorderRadius.circular(15)),
                    //             child: const Center(child: Text('Order Now', style: TextStyle(color: Colors.white, fontSize: 8),)),
                    //         ),
                    //       )
                    //     ],
                    //   ),
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: width * .45,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 4),
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                              //  color: Colors.green,
                              gradient: const LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 68, 224, 255),
                                    Colors.black
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)),
                          child: const Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 15.0),
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.white10,
                                  child: Image(
                                      height: 20,
                                      image:
                                          AssetImage('assets/images/gift.png')),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Refer & Earn',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                  Text(
                                    'Up to ₹ 200',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 8),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 50,
                          width: width * .45,
                          // width: 180,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 4),
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 104, 58, 183),
                                    Colors.black
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)
                              //  color: Colors.green
                              ),
                          child: const Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 15.0),
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.white10,
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Colors.amber,
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Buy Super coins',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                  Text(
                                    'Get flat off 20%',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 8),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        'Claim on your Intrust Card',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                    divider(),
                    Container(
                      // height: 250,
                      // color: Colors.red,
                      child: Column(
                        children: [
                          CarouselSlider(
                            carouselController: controller,
                            options: CarouselOptions(
                                pauseAutoPlayInFiniteScroll: true,
                                height: 200.0,
                                viewportFraction: 1,
                                autoPlay: true,
                                enableInfiniteScroll: false,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    current = index;
                                  });
                                }),
                            items: sliderContents.map(
                              (data) {
                                return Builder(builder: (BuildContext context) {
                                  return Container(
                                    margin: const EdgeInsets.only(
                                        top: 10, bottom: 10, right: 10),
                                    width: double.maxFinite,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                            image: AssetImage(data['image']!),
                                            fit: BoxFit.cover)),
                                  );
                                });
                              },
                            ).toList(),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                                sliderContents.asMap().entries.map((entry) {
                              // print(entry.key);
                              return GestureDetector(
                                onTap: () =>
                                    controller.animateToPage(entry.key),
                                child: Container(
                                  width: 8.0,
                                  height: 8.0,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 2.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: (current == entry.key
                                              ? Colors.yellow
                                              : Colors.white)
                                          .withOpacity(current == entry.key
                                              ? 0.9
                                              : 0.4)),
                                ),
                              );
                            }).toList(),
                          )
                        ],
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 18),
                      // height: 230,
                      width: double.infinity,
                      // padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                      decoration: BoxDecoration(
                          // border: Border.all(width: 2, color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white10),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, right: 10, left: 10),
                            child: SizedBox(
                              //  height: 182,
                              // color: Colors.amber,
                              child: Column(
                                children: [
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Recharge & bill progress',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      ),
                                      Text(
                                        'View All',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 20),
                                    child: divider(),
                                  ),
                                  //  const Divider(thickness: 2,color: Colors.red,height: 7,),
                                  GridView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 4,
                                      childAspectRatio: 1,
                                      mainAxisSpacing: 10,
                                      crossAxisSpacing: 10,
                                    ),
                                    itemCount: tab2List.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Column(
                                        children: [
                                          Image(
                                              color: Colors.white,
                                              height: 35,
                                              image: AssetImage(
                                                  tab2List[index]['image'])),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 4.0),
                                            child: SizedBox(
                                              width: 50,
                                              child: Text(
                                                tab2List[index]['title'],
                                                textAlign: TextAlign.center,
                                                style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10),
                                              ),
                                            ),
                                          )
                                        ],
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 25,
                            padding: const EdgeInsets.only(right: 40, left: 16),
                            // color: Colors.red,
                            decoration: const BoxDecoration(
                                // border: Border.all(width: 2, color: Colors.white),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                color: Colors.white24),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.star_border,
                                  color: Colors.amber,
                                  size: 20,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 5.0, right: 60),
                                  child: Text(
                                    '50 % Cashback on First Mobile Recharge',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 18,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          'Personal Financial Tools  ',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Expanded(child: divider()),
                        // Expanded(child: Divider(thickness: 2,color: Colors.amber,indent: 10,endIndent: 10,))
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      // height: 171,
                      // color: Colors.amber,
                      child: ListView.separated(
                        padding: const EdgeInsets.all(0),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: financialtoolList.length,
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            height: 10,
                          );
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return financialtoolList[index]['page'];
                              }));
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 15),
                              // margin: EdgeInsets.only(bottom:10),
                              width: double.infinity,
                              // height: 60,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: financialtoolList[index]['color'],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter),
                                  // color: Colors.white24,
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const CircleAvatar(
                                    radius: 13,
                                    backgroundColor: Colors.white24,
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ),
                                  Text(
                                    financialtoolList[index]['title'],
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  ),
                                  Image(
                                    image: AssetImage(
                                        financialtoolList[index]['image']),
                                    height: 25,
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    Row(
                      children: [
                        const Text(
                          'Instant Loan  ',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Expanded(child: divider()),
                        // Expanded(child: Divider(thickness: 2,color: Colors.amber,indent: 10,endIndent: 10,))
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'View All  ',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                size: 15,
                                color: Colors.white,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                // decoration: BoxDecoration(
                                //   gradient: RadialGradient(
                                //     stops: [.1,2],
                                //     radius: .6,
                                //     colors: [Colors.amber, Colors.white10])
                                // ),
                                // color: Colors.amber,
                                width: 150,
                                child: GridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: 1,
                                    mainAxisSpacing: 10,
                                    crossAxisSpacing: 10,
                                  ),
                                  itemCount: tab3List.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      // crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Image(
                                            color: Colors.white,
                                            height: 30,
                                            image: AssetImage(
                                                tab3List[index]['image'])),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 3.0),
                                          child: SizedBox(
                                            width: 45,
                                            child: Text(
                                              tab3List[index]['title'],
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
                                          ),
                                        )
                                      ],
                                    );
                                  },
                                ),
                              ),

                              Container(
                                width: 2,
                                height: 130,
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                      Colors.purple,
                                      Colors.orangeAccent,
                                      Colors.purple,
                                      Color.fromARGB(255, 73, 163, 237)
                                    ])),
                              ),

                              //  const SizedBox(
                              //   height: 130,
                              //   child: VerticalDivider(color: Colors.purple,thickness: 2,width: 20,)),
                              SizedBox(
                                // color: Colors.green,
                                width: 150,
                                child: GridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: 1,
                                    mainAxisSpacing: 10,
                                    crossAxisSpacing: 10,
                                  ),
                                  itemCount: tab3List.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      // crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Image(
                                            color: Colors.white,
                                            height: 30,
                                            image: AssetImage(
                                                tab3List[index]['image'])),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 3.0),
                                          child: SizedBox(
                                            width: 45,
                                            child: Text(
                                              tab3List[index]['title'],
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
                                          ),
                                        )
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shopping Store',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Wrap(children: [
                          Text('Go on Store  ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10)),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 13,
                          )
                        ])
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      height: 157,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: const EdgeInsets.only(right: 10),
                            padding: const EdgeInsets.all(10),
                            //  height: 120,
                            width: 130,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white10),
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 12),
                                  padding: const EdgeInsets.only(bottom: 4),
                                  //  height: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.white12,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(8),
                                        height: 75,
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(8),
                                                topRight: Radius.circular(8)),
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    'assets/images/image.jpg'))),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8),
                                              decoration: BoxDecoration(
                                                  color: Colors.orange,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: const Text(
                                                '60%',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10),
                                              ),
                                            ),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8),
                                              decoration: BoxDecoration(
                                                  color: Colors.orange,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: const Text(
                                                'New',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(top: 5.0, left: 5),
                                        child: Text(
                                          'Sneakers',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 8),
                                  //  width: 110,
                                  height: 25,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: Colors.red),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Row(
                                    children: [
                                      Text(
                                        'Order Now  ',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 11),
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        size: 12,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Career with Intrust',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Wrap(children: [
                          Text('View all  ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10)),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 13,
                          )
                        ])
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      height: 110,
                      width: double.infinity,
                      color: Colors.white12,
                  child:    ListView.builder(
                    scrollDirection: Axis.horizontal,
                        itemCount: CareerList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.only(left :7 ),
                            width: 80,
                            height: 70,
                            // color: Colors.amber,
                            child: Column(
                              children: [
                                Card(
                                  color: Colors.white10,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    height:70,
                                    width: 100,
                                    child: Image(image: AssetImage(CareerList[index]['image'])),
                                  ),
                                ),
                                SizedBox(
                                  width: 70,
                                  child: Text(CareerList[index]['title'], style: TextStyle(color: Colors.white),))

                              ],
                            ),
                          );
                        },
                      ),

                    ),

                    const Text(
                      'Promotional Banners',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),

                    Stack(
                      children: [
                        CarouselSlider(
                          carouselController: controller,
                          options: CarouselOptions(
                              pauseAutoPlayInFiniteScroll: true,
                              height: 200.0,
                              viewportFraction: 1,
                              autoPlay: true,
                              enableInfiniteScroll: false,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  current = index;
                                });
                              }),
                          items: sliderContents.map(
                            (data) {
                              return Builder(builder: (BuildContext context) {
                                return Container(
                                  margin: const EdgeInsets.only(
                                      top: 10, bottom: 10, right: 10),
                                  width: double.maxFinite,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          image: AssetImage(data['image']!),
                                          fit: BoxFit.cover)),
                                );
                              });
                            },
                          ).toList(),
                        ),
                        Positioned(
                          bottom: 25,
                          left: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                                sliderContents.asMap().entries.map((entry) {
                              // print(entry.key);
                              return GestureDetector(
                                onTap: () =>
                                    controller.animateToPage(entry.key),
                                child: Container(
                                  width: 8.0,
                                  height: 8.0,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 2.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: (current == entry.key
                                              ? Colors.yellow
                                              : Colors.white)
                                          .withOpacity(current == entry.key
                                              ? 0.9
                                              : 0.4)),
                                ),
                              );
                            }).toList(),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}
