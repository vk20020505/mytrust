import 'package:flutter/material.dart';

class DashBoard2 extends StatefulWidget {
  const DashBoard2({super.key});

  @override
  State<DashBoard2> createState() => _DashBoard2State();
}

class _DashBoard2State extends State<DashBoard2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leadingWidth: 45,
          leading: const CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage('assets/images/woman.png'),
          ),
          title: RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                  text: 'Good Morning,\n',
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 16,
                  ),
                  children: [
                    const TextSpan(
                      text: 'Jullie !',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    )
                  ])),
          // const Text('Good Morning, \n Jullie !'),
          actions: const [
            CircleAvatar(
                backgroundColor: Colors.white10,
                child: Icon(
                  Icons.notification_add,
                  color: Colors.white,
                ))
          ],
          bottom: PreferredSize(
              preferredSize: const Size(double.maxFinite, 60),
              child: Container(
                height: 45,
                // color: Colors.red,
                child: const TabBar(
                    indicatorColor: Colors.black12,
                    // indicatorWeight: ,
                    labelStyle:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    isScrollable: true,
                    tabs: [
                      Text(
                        'Dashboard',
                      ),
                      Text(
                        'Cards',
                      ),
                      Text(
                        'Analytics',
                      ),
                      Text(
                        'Receive',
                      ),
                    ]),
              )),
        ),
        body: TabBarView(children: [
          const Dashboard3(),
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.amber,
          )
        ]),
      ),
    );
  }
}

class Dashboard3 extends StatefulWidget {
  const Dashboard3({super.key});

  @override
  State<Dashboard3> createState() => _Dashboard3State();
}

class _Dashboard3State extends State<Dashboard3> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: 210,
        padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.amber),
        child: const Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white30,
              radius: 25,
              child: Image(
                  color: Colors.white,
                  height: 30,
                  image: AssetImage('assets/images/scan.png')),
              // backgroundImage: AssetImage('assets/images/scan.png'),
            ),
            Text(
              ' New Payment',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            Icon(
              Icons.add,
              color: Colors.white,
              size: 30,
            )
          ],
        ),
      ),
      body: Container(
        height: height,
        width: width,
        // color: Colors.red,
        child: Stack(
          // alignment: AlignmentDirectional.topCenter,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 10),
              width: double.maxFinite,
              height: 100,
              // height: height * .3,
              // color: Colors.blue,
              child:  Row(
                crossAxisAlignment: CrossAxisAlignment.end,
              
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    // 'vi',
                    '₹ ',
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:20, bottom: 8),
                        child: Text(
                          'Balance',
                          style: TextStyle(
                              fontSize: 23,
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Text(
                        '365,500',
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            DraggableScrollableSheet(
              initialChildSize: 0.8,
              minChildSize: 0.8,
              maxChildSize: 1,
              builder: (context, controller){
              return Container(
                width: width,
                padding:
                    const EdgeInsets.only(top: 23, left: 10, right: 10),
                height: height*.6,
                decoration:  BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    )),
                child: ListView(
                  controller: controller,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Recent Send',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      // color: Colors.green,
                      width: width,
                      height: 75,
                      child: ListView.builder(
                        // controller: controller,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            padding: const EdgeInsets.only(right: 20),
                            child: const Column(
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundImage:
                                      AssetImage('assets/images/woman.png'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5.0),
                                  child: Text(
                                    'Agens',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    const Text(
                      'Current Activity',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 9),
                      width: width,
                      padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                      child: TextField(
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey.shade800,
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 5),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey.shade400, width: 1),
                                borderRadius: BorderRadius.circular(30)),
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 1),
                                borderRadius: BorderRadius.circular(30)),
                            // border: InputBorder.none,
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            hintText: 'Search Transaction',
                            hintStyle: TextStyle(
                                color: Colors.grey.shade300, fontSize: 16)),
                      ),
                    ),
                    ListView.separated(
                      // controller: controller,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 10,
                      separatorBuilder: (BuildContext context, int index) {
                        return const Divider(
                          color: Colors.white,
                        );
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: const CircleAvatar(
                            radius: 25,
                            backgroundImage:
                                AssetImage('assets/images/woman.png'),
                          ),
                          title: const Text(
                            'Attu Kumari',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: const Text(
                            '9:04 AM - Aug 5th 2023',
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: RichText(
                              textAlign: TextAlign.end,
                              text: const TextSpan(
                                  text: '+ ₹ 145\n',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                  children: [
                                    TextSpan(
                                      text: 'Received',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                    )
                                  ])),
                          // trailing: Text('+ ₹ 145\n received', style: TextStyle(color: Colors.green, fontSize: 18, fontWeight: FontWeight.bold),),
                        );
                      },
                    ),
                  ],
                ),
              );
            })
            // Positioned(
            //   top: height *.15,
            //   child: Container(
            //       padding: const EdgeInsets.only(left: 10, right: 10),
            //       width: MediaQuery.sizeOf(context).width,
            //       height: 100,
            //       // color: Colors.green,
            //       decoration: const BoxDecoration(
            //           color: Colors.amber,
            //           borderRadius: BorderRadius.only(
            //             topLeft: Radius.circular(22),
            //             topRight: Radius.circular(22),
            //           )),
            //       child: const ListTile(
            //         minLeadingWidth: 5,
            //         trailing: Icon(
            //           Icons.arrow_forward_ios_outlined,
            //           color: Colors.white,
            //           size: 15,
            //         ),
            //         contentPadding:
            //             EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            //         leading: Image(
            //           image: AssetImage('assets/images/verify.png'),
            //           color: Colors.white,
            //           height: 22,
            //         ),
            //         title: Text(
            //           'You Have saved 500 in last 30 days',
            //           style: TextStyle(color: Colors.white, fontSize: 18),
            //         ),
            //       )),
            // ),
            // Positioned(
            //   top: height * .22,
            //   child: Container(
            //     width: width,
            //     padding:
            //         const EdgeInsets.only(top: 23, left: 10, right: 10),
            //     height: height*.6,
            //     decoration:  BoxDecoration(
            //         color: Colors.grey.shade900,
            //         borderRadius: const BorderRadius.only(
            //           topLeft: Radius.circular(25),
            //           topRight: Radius.circular(25),
            //         )),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         const Text(
            //           'Recent Send',
            //           style: TextStyle(
            //               fontSize: 25,
            //               color: Colors.white,
            //               fontWeight: FontWeight.bold),
            //         ),
            //         Container(
            //           margin: const EdgeInsets.symmetric(vertical: 10),
            //           // color: Colors.green,
            //           width: width,
            //           height: 75,
            //           child: ListView.builder(
            //             scrollDirection: Axis.horizontal,
            //             shrinkWrap: true,
            //             itemCount: 10,
            //             itemBuilder: (BuildContext context, int index) {
            //               return Container(
            //                 padding: const EdgeInsets.only(right: 20),
            //                 child: const Column(
            //                   children: [
            //                     CircleAvatar(
            //                       radius: 25,
            //                       backgroundImage:
            //                           AssetImage('assets/images/woman.png'),
            //                     ),
            //                     Padding(
            //                       padding: EdgeInsets.only(top: 5.0),
            //                       child: Text(
            //                         'Agens',
            //                         style: TextStyle(
            //                             fontSize: 15, color: Colors.white),
            //                       ),
            //                     )
            //                   ],
            //                 ),
            //               );
            //             },
            //           ),
            //         ),
            //         const Text(
            //           'Current Activity',
            //           style: TextStyle(
            //               fontSize: 25,
            //               color: Colors.white,
            //               fontWeight: FontWeight.bold),
            //         ),
            //         Container(
            //           margin: const EdgeInsets.symmetric(vertical: 9),
            //           width: width,
            //           padding: const EdgeInsets.only(top: 8.0, bottom: 10),
            //           child: TextField(
            //             cursorColor: Colors.white,
            //             decoration: InputDecoration(
            //                 filled: true,
            //                 fillColor: Colors.grey.shade800,
            //                 contentPadding:
            //                     const EdgeInsets.symmetric(vertical: 5),
            //                 focusedBorder: OutlineInputBorder(
            //                     borderSide: BorderSide(
            //                         color: Colors.grey.shade400, width: 1),
            //                     borderRadius: BorderRadius.circular(30)),
            //                 border: OutlineInputBorder(
            //                     borderSide: const BorderSide(
            //                         color: Colors.white, width: 1),
            //                     borderRadius: BorderRadius.circular(30)),
            //                 // border: InputBorder.none,
            //                 prefixIcon: const Icon(
            //                   Icons.search,
            //                   color: Colors.white,
            //                 ),
            //                 hintText: 'Search Transaction',
            //                 hintStyle: TextStyle(
            //                     color: Colors.grey.shade300, fontSize: 16)),
            //           ),
            //         ),
            //         Expanded(
            //           child: ListView.separated(
            //             shrinkWrap: true,
            //             itemCount: 5,
            //             separatorBuilder: (BuildContext context, int index) {
            //               return const Divider(
            //                 color: Colors.white,
            //               );
            //             },
            //             itemBuilder: (BuildContext context, int index) {
            //               return ListTile(
            //                 leading: const CircleAvatar(
            //                   radius: 25,
            //                   backgroundImage:
            //                       AssetImage('assets/images/woman.png'),
            //                 ),
            //                 title: const Text(
            //                   'Attu Kumari',
            //                   style: TextStyle(
            //                       color: Colors.white,
            //                       fontWeight: FontWeight.bold),
            //                 ),
            //                 subtitle: const Text(
            //                   '9:04 AM - Aug 5th 2023',
            //                   style: TextStyle(color: Colors.white),
            //                 ),
            //                 trailing: RichText(
            //                     textAlign: TextAlign.end,
            //                     text: const TextSpan(
            //                         text: '+ ₹ 145\n',
            //                         style: TextStyle(
            //                             color: Colors.green,
            //                             fontSize: 18,
            //                             fontWeight: FontWeight.bold),
            //                         children: [
            //                           TextSpan(
            //                             text: 'Received',
            //                             style: TextStyle(
            //                                 color: Colors.white,
            //                                 fontSize: 12,
            //                                 fontWeight: FontWeight.normal),
            //                           )
            //                         ])),
            //                 // trailing: Text('+ ₹ 145\n received', style: TextStyle(color: Colors.green, fontSize: 18, fontWeight: FontWeight.bold),),
            //               );
            //             },
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
