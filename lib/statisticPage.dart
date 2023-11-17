import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:mytrust/leaderBoard.dart';

class data {
  data({required this.x, required this.y, this.name});
  int x;
  double y;
  String? name;
}

List<data> dataItems = [
  data(x: 1, y: 5, name: 'mon'),
  data(x: 2, y: 8, name: 'mon'),
  data(x: 3, y: 4, name: 'mon'),
  data(x: 4, y: 3, name: 'mon'),
  data(x: 5, y: 9, name: 'mon'),
  data(x: 6, y: 7, name: 'mon'),
  data(x: 7, y: 6, name: 'mon'),
];

class StatisticPage extends StatefulWidget {
  const StatisticPage({super.key});

  @override
  State<StatisticPage> createState() => _StatisticPageState();
}

class _StatisticPageState extends State<StatisticPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 15),
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Total Earning',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '₹ ',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      '2000',
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 3, horizontal: 8),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(13)),
                      child: const Text(
                        '4.6 %',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 15),
                padding:
                    const EdgeInsets.symmetric(horizontal: 13, vertical: 13),
                // height: MediaQuery.sizeOf(context).height - 200,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Today's Activity",
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return LeaderBoard();
                              }));
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                backgroundColor: Colors.grey.shade300),
                            child: const Text(
                              'Earnings',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ))
                      ],
                    ),
                    Container(
                      height: 260,
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      // color: Colors.amber,
                      child: LineChart(LineChartData(
                          titlesData: const FlTitlesData(
                              leftTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false)),
                              rightTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false)),
                              topTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false)),
                                  bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: false))
                            ),
                          minX: 0,
                          maxX: 11,
                          minY: 0,
                          maxY: 6,
                          borderData: FlBorderData(
                              show: true,
                              border:
                                  const Border(bottom: BorderSide(width: 1))),
                          lineBarsData: [
                            LineChartBarData(
                                // dotData: FlDotData(show: false),
                                belowBarData: BarAreaData(
                                  show: true,
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Colors.amber.shade200.withOpacity(.5),
                                        Colors.white
                                      ]),
                                ),
                                barWidth: 5,
                                gradient: const LinearGradient(
                                    colors: [Colors.amber, Colors.deepPurple]),
                                isCurved: true,
                                spots: [
                                  const FlSpot(0, 4),
                                  const FlSpot(2, 3.5),
                                  const FlSpot(4.3, 4.5),
                                  const FlSpot(6.3, 3.8),
                                  const FlSpot(8.1, 4.8),
                                  const FlSpot(9.8, 4.5),
                                  const FlSpot(11, 5.4),
                                ])
                          ],
                          gridData: const FlGridData(show: false))),
                    ),
                    const Text(
                      'Last 7 Days',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(top: 10),
                        // color: Colors.amber,
                        // height: 190,
                        child: BarChart(BarChartData(
                            gridData: const FlGridData(
                              drawVerticalLine: false,
                              drawHorizontalLine: false,
                            ),
                            borderData: FlBorderData(
                                show: true,
                                border: const Border(
                                    bottom: BorderSide(
                                        width: 2, color: Colors.grey))),
                            // FlBorderData(show: false,),
                            titlesData: const FlTitlesData(
                              leftTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false)),
                              rightTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false)),
                              topTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false)),
                            ),
                            maxY: 10,
                            minY: 0,
                            barGroups: dataItems
                                .map(
                                  (data) => BarChartGroupData(
                                      barsSpace: 10,
                                      x: data.x,
                                      barRods: [
                                        BarChartRodData(
                                            toY: data.y,
                                            gradient: const LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  Colors.amber,
                                                  Colors.purple
                                                ]),
                                            width: 13,
                                            borderRadius:
                                                BorderRadius.circular(0))
                                      ]),
                                )
                                .toList())),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
