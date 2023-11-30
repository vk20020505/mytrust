import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:mytrust/buyCoins.dart';
import 'package:mytrust/sellCoins.dart';
import 'package:mytrust/statisticPage.dart';

class OfferPage extends StatefulWidget {
  const OfferPage({super.key});

  @override
  State<OfferPage> createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;
   return Scaffold(
      appBar: AppBar(
        title: const Text('Type1'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0,),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    // fixedSize: Size(0, 15),
                    shape: const StadiumBorder(),
                    backgroundColor: Colors.blue.shade100),
                onPressed: () {
                  //               Navigator.push(
                  //                 context,
                  //                 MaterialPageRoute(builder: (context) {
                  // return const BuyCoin();
                  //                 }),
                  //               );
                },
                child: const Row(
                  children: [
                    // Icon(
                    //   Icons.currency_exchange,
                    //   color: Colors.amber,
                    // ),
                    Text('Exchange',
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 13,
                            fontWeight: FontWeight.bold)),
                  ],
                )),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            const Divider(
              thickness: 2,
              color: Colors.amber,
            ),
            const Row(
              children: [
                SizedBox(width: 15,),
                Text(
                  '60.00',
                  style: TextStyle(fontSize: 20, color: Colors.amber),
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  '+1700.254 (9.77%)',
                  style: TextStyle(fontSize: 15, color: Colors.green),
                )
              ],
            ),
              Container(
                      height: 260,
                      margin: const EdgeInsets.only(bottom: 15),
                      // color: Colors.red,
                      child: LineChart(LineChartData(
                          titlesData:  FlTitlesData(
                              leftTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false)),
                              rightTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false)),
                              topTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    interval: 3,
                                    showTitles: false, 
                              
                                  )),
                             
                              ),
                          minX: 0,
                          maxX: 11,
                          minY: 0,
                          maxY: 6,
                          borderData: FlBorderData(
                              show: true,
                              border:
                                  const Border(bottom: BorderSide(width: 1, color: Colors.white))),
                          lineBarsData: [
                            LineChartBarData(
                                dotData: const FlDotData(show: false),
                             
                                barWidth: 1,
                                color: Colors.amber,
                                // gradient: const LinearGradient(
                                //     colors: [Colors.amber, Colors.deepPurple]),
                                // isCurved: true,
                                spots: [
                                  const FlSpot(0, 4),
                                  const FlSpot(2, 5.5),
                                  // const FlSpot(3, 6.5),
                                  const FlSpot(4, 3.5),
                                  
                                  const FlSpot(4.8, 2.5),
                                  const FlSpot(5, 4.5),
                                  // const FlSpot(2.4, 7.5),
                                  // const FlSpot(5.5, 5),
                                  const FlSpot(4.3, 4),
                                  const FlSpot(6.3, 3.5),
                                  const FlSpot(8, 4),
                                  const FlSpot(9, 3.5),
                                  const FlSpot(11, 4),
                                ])
                          ],
                          gridData: const FlGridData(show: false))),
                    ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
              minLeadingWidth: 15,
               onTap: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                leading: const Image(
                  height: 22,
                  image: AssetImage('assets/images/gift.png')),
                tileColor: Colors.white12,
              title: const Text('Type1', style: TextStyle(color: Colors.white, fontSize: 15),),
              trailing: const Text('₹ 00.00', style: TextStyle(color: Colors.white, fontSize: 17),),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal:5.0, vertical: 10),
              child: ListTile(
                onTap: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                // style: ListTileStyle.,
                tileColor: Colors.white12,
                title: const Text(
                  'Transactions',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                trailing: const Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.white, size: 17),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:5.0, right: 5, bottom: 20),
              child: ListTile(
                onTap: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                tileColor: Colors.white12,
                title: const Text(
                  'Info',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.white,
                  size: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
               ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(color: Colors.white),
                      fixedSize:  Size(width*.35 ,40),
                      backgroundColor: Colors.amber),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const BuyCoin();
                      }));
                    }, child: const Text('BUY', style: TextStyle(fontSize: 18),)),
                      ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(color: Colors.white),
                      fixedSize:  Size(width*.35 ,40),
                      backgroundColor: Colors.amber),
                    onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const SellCoin();
                      }));

                    }, child: const Text(' SELL', style: TextStyle(fontSize: 18),)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}