import 'package:flutter/material.dart';
import 'package:plants/landingview.dart';

class Detailview extends StatefulWidget {
  const Detailview({super.key});

  @override
  State<Detailview> createState() => _DetailviewState();
}

class _DetailviewState extends State<Detailview> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff16423C),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 30),
              width: MediaQuery.of(context).size.width,
              height: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60)
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 80,),
                      GestureDetector(
                          onTap: (){
                            Navigator.pop(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Landingview()));
                          },
                          child: Icon(Icons.arrow_back,color: Colors.black,)),
                      SizedBox(height: 20,),
                      Text("Rachel", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 40),),
                      Text("This is my darling mother", style: TextStyle(color: Colors.black, fontSize: 18),),
                      SizedBox(height: 20,),
                      Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Color(0xff16423C).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(60)
                        ),
                        child: Text("Health", style: TextStyle(color: Color(0xff16423C), fontWeight: FontWeight.bold, fontSize: 18),),
                      )
                    ],
                  ),
                  Image(image: AssetImage("images/plant1.png"),width: 160,),

                ],
              ),
            ),
            SizedBox(height: 50,),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Plant Care",style: TextStyle(color: Colors.white,fontSize: 28),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 50,),
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(60)
                                ),
                                child: Icon(Icons.water_drop_outlined, color: Colors.white,),
                              ),
                              SizedBox(width: 10,),
                              Text("Every 3 weeks", style: TextStyle(color: Colors.white, fontSize: 18),)
                            ],
                          ),
                          SizedBox(height: 30,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(60)
                                ),
                                child: Icon(Icons.sunny, color: Colors.white,),
                              ),
                              SizedBox(width: 10,),
                              Text("Natural light", style: TextStyle(color: Colors.white, fontSize: 18),),
                            ],
                          ),
                          SizedBox(height: 30,),
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(60)
                                ),
                                child: Icon(Icons.thermostat_outlined, color: Colors.white,),
                              ),
                              SizedBox(width: 10,),
                              Text("Minimum of 7°C", style: TextStyle(color: Colors.white, fontSize: 18),)
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 40,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 300,
                            width: MediaQuery.of(context).size.width/2.55,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.4),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(60),
                                bottomLeft: Radius.circular(60)
                              )
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Next watering", style: TextStyle(color: Colors.white),),
                                SizedBox(height: 20,),
                                Container(
                                  alignment: Alignment.center,
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white,width: 10),
                                    borderRadius: BorderRadius.circular(90)
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("6",style: TextStyle(color: Colors.white,fontSize: 20),),
                                      Text("days",style: TextStyle(color:  Colors.white),)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Information",style: TextStyle(color: Colors.white,fontSize: 30),),
                    ],
                  ),
                  Text("I love my mother so much, she is the reason I do be working this extra hard. All my dedication is on giving the best I can, day by day I am learning new things.",style: TextStyle(color: Colors.white),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
