import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Check_Credit_Score extends StatefulWidget {
  const Check_Credit_Score({super.key});

  @override
  State<Check_Credit_Score> createState() => _Check_Credit_ScoreState();
}

class _Check_Credit_ScoreState extends State<Check_Credit_Score> {
  double creditScore = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('CHECK CREDIT SCORE'),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 30,
          ),



          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              left: 20,
              right: 20,
            ),
            child: Container(
                //  height: 200,
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 21, 21, 21),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [


                     SfRadialGauge(
                      
          axes: <RadialAxis>[
            RadialAxis(minimum: 0, maximum: 1000, 
            ranges: <GaugeRange>[
              GaugeRange(startValue: 0, endValue: 330, color:Colors.green),
              GaugeRange(startValue: 330,endValue: 660,color: Colors.orange),
              GaugeRange(startValue: 660,endValue: 1000,color: Colors.red)],
            pointers:  <GaugePointer>[
              NeedlePointer(needleColor: Colors.blue,value: creditScore, needleEndWidth: 3,knobStyle: KnobStyle(knobRadius: .04,color: Colors.amber),)],
            annotations: <GaugeAnnotation>[
              GaugeAnnotation(widget: Container(
                child: 
                  Text((creditScore>300)? 'Good':'Low',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: (creditScore>300)? Colors.green:Colors.red))),
                 angle: 90, positionFactor: 0.5
              )]
          )]),

          const Text('You are in good shape. Better score \n can help you to get credit',textAlign: TextAlign.center ,style: TextStyle(fontSize: 18, color: Colors.white54),),
          const Padding(
            padding: EdgeInsets.symmetric(vertical:10),
            child: Text('Credit Score',textAlign: TextAlign.center ,style: TextStyle(fontSize: 23, color: Colors.white, fontWeight: FontWeight.bold),),
          ),

          const Padding(
            padding: EdgeInsets.only(bottom:20.0),
            child: Divider(
              thickness: 1.5,
              height: 0,
              color: Colors.amber,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 70,
                // height: 50,
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Text('800', style: TextStyle(fontSize: 25,  color: Colors.amber),),
                        Icon(Icons.arrow_downward_outlined, color: Colors.amber,size:25)
                      ],
                    ),
                    Text('Last Week', style: TextStyle(fontSize: 15, color: Colors.grey.shade400),)
                  ],
                ),
              ),

                SizedBox(
                  // color: Colors.amber,
                width: 80,
                height: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text('600', style: TextStyle(fontSize: 25,  color: Colors.amber),),
                        Icon(Icons.arrow_upward_outlined, color: Colors.green,size:25)
                      ],
                    ),
                    Text('Last Month', style: TextStyle(fontSize: 15, color: Colors.grey.shade400),)
                  ],
                ),
              )

            ],
          )

                  ]
                  )
                  ),
          ),

          const Padding(
            padding: EdgeInsets.only(
              top: 15,
              left: 20,
              right: 20,
            ),
            child: Text(
              'Needs Improvements',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              left: 20,
              right: 20,
            ),

            // installment container4 start

            child: Container(
              //  height: 200,
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 21, 21, 21),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.emoji_emotions_rounded,
                    size: 50,
                    color: Colors.yellow,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Credit Card Use !",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "How much credit you are \n compared to your limit.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 80,
                          vertical: 10,
                        ),
                        backgroundColor: Colors.yellowAccent[700],
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'LEARN MORE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
