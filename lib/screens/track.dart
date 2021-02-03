import 'dart:async';

import 'package:flutter/material.dart';
import 'package:trackingapp/appassets/constants.dart';
import 'package:trackingapp/appassets/custom_listtile.dart';
import 'package:trackingapp/appassets/custom_textfield.dart';
import 'package:trackingapp/appassets/dropdown_widget.dart';

class TrackScreen extends StatefulWidget {
  @override
  _TrackScreenState createState() => _TrackScreenState();
}

class _TrackScreenState extends State<TrackScreen> {

  String _timeString;

  @override
  void initState(){
    _timeString = "${DateTime.now().hour} : ${DateTime.now().minute} :${DateTime.now().second}";
    Timer.periodic(Duration(seconds:1), (Timer t)=>_getCurrentTime());
    super.initState();
  }

  void _getCurrentTime()  {
    setState(() {
      _timeString = "${DateTime.now().hour} : ${DateTime.now().minute} :${DateTime.now().second}";
    });}

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: TabBar(
              onTap: (index) {
                // Tab index when user select it, it start from zero
              },
              tabs: [
                Tab(child: Text('Upcoming', style: TextStyle(color: Colors.grey),),),
                Tab(child: Text('In-progress', style: TextStyle(color: Colors.grey)),),
                Tab(child: Text('Past', style: TextStyle(color: Colors.grey)),),

              ],
            ),
            title: Text('Track', style: TextStyle(
              fontSize: 18, color: Colors.black
            ),),
          ),
          body: TabBarView(
            children: [
              Center(
                  child: Text(
                    "Upcoming Trackers",
                    style: TextStyle(fontSize: 40),
                  )),
              ListView(
                padding: EdgeInsets.only(top: 25, right: 15, left: 15),
                children: [
                  Center(
                    child: Stack(
                      children: [
                        Container(
                          child: SizedBox(
                            height: 400,
                            width: 335,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5.0)
                          ),
                        ),
                        Positioned( bottom: 0, top: 0, left: 0, right: 0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Padding(
                                padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20, bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Text("Waiter", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 8.0),
                                          child: Text("Michael", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),),
                                        ),

                                      ],
                                    ),

                                    CircleAvatar(
                                      backgroundImage: AssetImage('images/userimage.png'),
                                    ),

                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20, bottom: 5),
                                child: Text("Wed, Sep 23, 11:00am - 1:00pm", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Colors.grey),),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 5.0, left: 20, right: 20, bottom: 5),
                                child: Text("Crown Hotel, New York", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Colors.grey),),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Divider(
                                  color: Colors.grey,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20, bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [

                                    Icon(Icons.circle, ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10, right: 10),
                                      child: Text("Check-in time", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Colors.grey),),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 70,),
                                      child: Text("10:58am", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Colors.grey),),
                                    ),

                                  ],
                                ),
                              ),

                              Divider(
                                color: Colors.grey,
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text(_timeString, style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),)),
                              ),

                              Divider(
                                color: Colors.grey,
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20, bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [

                                    Expanded(
                                      flex: 100,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Image(image: AssetImage('images/givebreak.png'),),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 10,),
                                            child: Text("Give Break", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Colors.grey),),
                                          ),
                                        ],
                                      ),
                                    ),

                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        height: 50,
                                        width: 1,
                                        color: Colors.grey,
                                      )
                                    ),

                                    Expanded(
                                      flex: 100,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Icon(Icons.skip_next, color: Colors.red,),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 10,),
                                            child: Text("End Shift", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Colors.red),),
                                          ),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                              ),

                            ],
                          )
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              ListView(
                padding: EdgeInsets.only(top: 25, right: 15, left: 15),
                children: [
                  Center(
                    child: Stack(
                      children: [
                        Container(
                          child: SizedBox(
                            height: 450,
                            width: 335,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5.0)
                          ),
                        ),
                        Positioned( bottom: 0, top: 0, left: 0, right: 0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20, bottom: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                      Text("Waiter", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0),
                                        child: Text("\$123.50", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                                      ),

                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20, bottom: 5),
                                  child: Text("Wed, Sep 23, 11:00am - 1:00pm", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Colors.grey),),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0, left: 20, right: 20, bottom: 5),
                                  child: Text("Crown Hotel, New York", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Colors.grey),),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0, left: 20, right: 20, bottom: 0),
                                  child: Text("2 workers", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Colors.grey),),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Divider(
                                    color: Colors.grey,
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 0.0, left: 20, right: 20, bottom: 0),
                                  child: userlist(title: "Michael", subtitle: '11:00am - 1:23pm',),
                                ),

                                Divider(
                                  color: Colors.grey,
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 0.0, left: 20, right: 20, bottom: 0),
                                  child: userlist(title: "Robert", subtitle: '11:30am - 1:33pm',),
                                ),

                                Divider(
                                  color: Colors.grey,
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20, bottom: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [

                                      Expanded(
                                        flex: 100,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.star, color: Colors.orangeAccent,),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 10,),
                                              child: Text("Rate Samurai", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Colors.black),),
                                            ),
                                          ],
                                        ),
                                      ),

                                      Expanded(
                                          flex: 1,
                                          child: Container(
                                            height: 50,
                                            width: 1,
                                            color: Colors.grey,
                                          )
                                      ),

                                      Expanded(
                                        flex: 100,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.email, color: AppColors.themecolor,),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 10,),
                                              child: Text("Email Receipt", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Colors.black),),
                                            ),
                                          ],
                                        ),
                                      ),

                                    ],
                                  ),
                                ),

                              ],
                            ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20,),

                  Center(
                    child: Stack(
                      children: [
                        Container(
                          child: SizedBox(
                            height: 280,
                            width: 335,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5.0)
                          ),
                        ),
                        Positioned( bottom: 0, top: 0, left: 0, right: 0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Padding(
                                padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20, bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text("Waiter", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text("\$36.65", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                                    ),

                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 5.0, left: 20, right: 20, bottom: 5),
                                child: Text("Wed, Sep 23, 11:00am - 1:00pm", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Colors.grey),),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 5.0, left: 20, right: 20, bottom: 5),
                                child: Text("Crown Hotel, New York", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Colors.grey),),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Divider(
                                  color: Colors.grey,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 0.0, left: 20, right: 20, bottom: 0),
                                child: userlist(title: "Michael", subtitle: '11:00am - 1:23pm',),
                              ),

                              Divider(
                                color: Colors.grey,
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20, bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.email, color: AppColors.themecolor,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,),
                                      child: Text("Email Receipt", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Colors.black),),
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 50,),

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
