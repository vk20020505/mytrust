import 'package:flutter/material.dart';
import 'package:mytrust/dashboard.dart';
// import 'package:fl_chart/fl_chart.dart';

class LeaderBoard extends StatefulWidget {
  const LeaderBoard({super.key});

  @override
  State<LeaderBoard> createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoard> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Leaderboard',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          centerTitle: true,
          bottom: PreferredSize(
              preferredSize: const Size(double.infinity, 50),
              child: Container(
                width: MediaQuery.sizeOf(context).width * .9,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(10)),
                child: const TabBar(labelStyle: TextStyle(fontSize: 18), tabs: [
                  Text('Weekly'),
                  Text('Monthly'),
                  Text('Yearly'),
                ]),
              )),
        ),
        body: const TabBarView(children: [
          WeeklyLeaderBoard(),
          WeeklyLeaderBoard(),
          WeeklyLeaderBoard(),
        ]),
      ),
    );
  }
}

class WeeklyLeaderBoard extends StatelessWidget {
  const WeeklyLeaderBoard({super.key});

  Widget Scorer(double radi) {
    return  Column(
      children: [
        CircleAvatar(
          radius: radi,
           backgroundImage: AssetImage('assets/images/woman.png'),
        ),
        Padding(
          padding: EdgeInsets.only(top: 5.0),
          child: Text(
            'Rohit',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Text('1847', style: TextStyle(color: Colors.blue)),
        Text('username', style: TextStyle(color: Colors.white, fontSize: 12)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 45),
            height: MediaQuery.sizeOf(context).height * .3,
            // color: Colors.blue,
            child: Stack(
              // alignment: Alignment(-10,30),
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 93),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(10)),
                ),
                Positioned(top: 55, left: 15, child: Scorer(28)),
                Positioned(top: 55, right: 15, child: Scorer(28)),
                Positioned(
                  top: 15,
                  left: 95,
                  child: Container(
                    width: 110,
                    // color: Colors.black,
                    height: 178,
                    child: Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 45),
                          // height: 100,
                          decoration: const BoxDecoration(
                              color: Colors.white54,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25))),
                        ),
                        Positioned(right: 21, child: Scorer(33)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),

          DraggableScrollableSheet(
                initialChildSize: 0.6,
              minChildSize: 0.6,
              maxChildSize: 1,
            builder: (context, controller){
            return       Container(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
              decoration: const BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: ListView.separated(
                controller: controller,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                // shrinkWrap: true,
                itemCount: 8,
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(
                    thickness: 1,
                    color: Colors.white,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const DashBoard();
                      }));
                    },
                    leading: const CircleAvatar(
                      radius: 25,
                       backgroundImage: AssetImage('assets/images/woman.png'),
                    ),
                    title: const Text(
                      'Vinay',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    subtitle: const Text('username',
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                    trailing: const Text(
                      '887',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  );
                },
              ),
            );
          })
     
        ],
      ),
    );
  }
}
