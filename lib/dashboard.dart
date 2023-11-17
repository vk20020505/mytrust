import 'package:flutter/material.dart';
import 'package:mytrust/dashBoard2.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List<String> months = ['July', 'Aug', 'Sept', 'Oct', 'Nov', 'Dec'];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: months.length,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Portfolio',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.black,
              height: MediaQuery.sizeOf(context).height * .235,
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 25),
                    height: MediaQuery.sizeOf(context).height * .2,
                    color: Colors.amber,
                    child: ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DashBoard2();
                        }));
                      },
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      leading: CircleAvatar(
                        radius: 25,
                         backgroundImage: AssetImage('assets/images/woman.png'),
                      ),
                      title: Text(
                        'Total Investment',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: RichText(
                              
                              text: const TextSpan(
                              text: '₹ 75,259',
                              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(
                                    text: '.00',
                              style: TextStyle(color: Colors.white, fontSize: 12),
                                )
                              ])),
                      // subtitle: Text('₹ 75,259.00',
                      //     style: TextStyle(
                      //         color: Colors.white,
                      //         fontSize: 20,
                      //         fontWeight: FontWeight.bold)),
                      trailing: Icon(
                        Icons.logout_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  // Positioned(
                  //   bottom: 10,
                  //   child: Container(
                  //     height: 10,
                  //     color: Colors.green,
                  //     child: Text('ciny'),
                  //   ),
                  // ),
                  Positioned(
                    bottom: 1,
                    left: 18,
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 5, left: 5, right: 5, bottom: 10),
                      // height: 70,
                      width: MediaQuery.sizeOf(context).width * .91,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          const Text(
                            '2023',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          const Divider(
                            thickness: 1,
                            color: Colors.white,
                            height: 18,
                          ),
                          TabBar(
                              // padding: EdgeInsets.all(0),
                              onTap: (value) {
                                index = value;
                              },
                              labelColor: Colors.white,
                              unselectedLabelColor: Colors.amber,
                              indicatorSize: TabBarIndicatorSize.label,
                              indicatorColor: Colors.black12,
                              isScrollable: true,
                              tabs: months
                                  .map((val) => Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 3),
                                        decoration: BoxDecoration(
                                            color: Colors.white24,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Text(
                                          val,
                                        ),
                                      ))
                                  .toList())
                        ],
                      ),
                    ),
                  ),
                 
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 13),
                  color: Colors.black,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Text(
                              'Total Investment statics  ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Expanded(
                                child: Divider(
                              thickness: 1,
                              color: Colors.white,
                            ))
                          ],
                        ),
                        Container(
                          // height: 150,
                          margin: const EdgeInsets.only(top: 15, bottom: 20),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                               Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Total Investment',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                          )),
                                          RichText(
                              
                              text: const TextSpan(
                              text: '₹ 75,259',
                              style: TextStyle(color: Colors.amber, fontSize: 15, fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(
                                    text: '.00',
                              style: TextStyle(color: Colors.white, fontSize: 10),
                                )
                              ])),
                                      // Text('₹ 75,259',
                                      //     style: TextStyle(
                                      //         color: Colors.amber,
                                      //         fontSize: 15,
                                      //         fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                  SizedBox(
                                      height: 40,
                                      child: VerticalDivider(
                                        width: 40,
                                        thickness: 2,
                                        color: Colors.white,
                                      )),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Profit/Loss',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                          )),
                                          RichText(
                              
                              text: const TextSpan(
                              text: '₹ 13,259',
                              style: TextStyle(color: Colors.amber, fontSize: 15, fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(
                                    text: '.00',
                              style: TextStyle(color: Colors.white, fontSize: 12),
                                ),
                                    TextSpan(
                                    text: '10%',
                              style: TextStyle(color: Colors.amber, fontSize: 12),
                                )
                              ])),
                                      
                                    ],
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical:5.0),
                                child: LinearProgressIndicator(
                                  value: .7,
                                  minHeight: 2,
                                  color: Colors.amber,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.amber.withOpacity(.3),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Text(
                                      'Total Capital',
                                      style: TextStyle(
                                          color: Colors.amber, fontSize: 15),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Text(
                                      ' Budget financial',
                                      style: TextStyle(
                                          color: Colors.amber, fontSize: 15),
                                    ),
                                  )
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10.0),
                                child: Text(
                                  'The growth rate over the previous month 34 %',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 2,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Cabbalistics Capital',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                    Text(
                                      'Edit',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.amber,
                                          fontSize: 15),
                                    )
                                  ],
                                ),
                                Container(
                                  // height: 150,
                                  margin: const EdgeInsets.only(
                                      top: 15, bottom: 20),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white24),
                                  child: const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Total Investment',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 13,
                                                  )),
                                              Text('₹ 75,259',
                                                  style: TextStyle(
                                                      color: Colors.amber,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold))
                                            ],
                                          ),
                                          SizedBox(
                                              height: 40,
                                              child: VerticalDivider(
                                                width: 40,
                                                thickness: 2,
                                                color: Colors.white,
                                              )),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Profit/Loss',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 13,
                                                  )),
                                              Text('₹ 13,259',
                                                  style: TextStyle(
                                                      color: Colors.amber,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold))
                                            ],
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(vertical:5.0),
                                        child: LinearProgressIndicator(
                                          value: .4,
                                          minHeight: 2,
                                          color: Colors.amber,
                                          backgroundColor: Colors.white,
                                        ),
                                      ),

                                      // Divider(
                                      //   thickness: 4,
                                      //   color: Colors.amber,
                                      // ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '* Equities',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            '* Real estate',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 10.0),
                                        child: Text(
                                          'The growth rate over the previous month 34 %',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.black,
                ),
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.blue,
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
