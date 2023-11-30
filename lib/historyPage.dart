import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
     return DefaultTabController(
      length: 4,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leadingWidth: 52,
          leading: Padding(
            padding: EdgeInsets.only(left:8.0),
            child:  CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage('assets/images/woman.png'),
            ),
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
                          fontWeight: FontWeight.w500),
                    )
                  ])),
          // const Text('Good Morning, \n Jullie !'),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right:8.0),
              child: CircleAvatar(
                  backgroundColor: Colors.white10,
                  child: Icon(
                    Icons.notification_add,
                    color: Colors.white,
                  )),
            )
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
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
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
        width: 165,
        padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.amber),
        child: const Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white30,
              radius: 18,
              child: Image(
                  color: Colors.white,
                  height: 20,
                  image: AssetImage('assets/images/scan.png')),
              // backgroundImage: AssetImage('assets/images/scan.png'),
            ),
            Text(
              ' New Payment',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
            Icon(
              Icons.add,
              color: Colors.white,
              size: 25,
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
              padding: const EdgeInsets.only(bottom: 16),
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
                        fontSize: 21,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:20, bottom: 9),
                        child: Text(
                          'Balance',
                          style: TextStyle(
                              fontSize: 21,
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      const Text(
                        '365,500',
                        style: TextStyle(
                            fontSize: 26,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            DraggableScrollableSheet(
              initialChildSize: 0.79,
              minChildSize: 0.79,
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
                          fontSize: 23,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
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
                                        fontSize: 13, color: Colors.white),
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
                          fontSize: 23,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 3),
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
                                borderSide:  BorderSide.none,
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
                          height: 2,
                          color: Colors.white,
                        );
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: const CircleAvatar(
                            radius: 23,
                            backgroundImage:
                                AssetImage('assets/images/woman.png'),
                          ),
                          title: const Text(
                            'Attu Kumari',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                          subtitle: const Text(
                            '9:04 AM - Aug 5th 2023',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white),
                          ),
                          trailing: RichText(
                              textAlign: TextAlign.end,
                              text: const TextSpan(
                                  text: '+ ₹ 145\n',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                  children: [
                                    TextSpan(
                                      text: 'Received',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
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
          ],
        ),
      ),
    );
  }
}