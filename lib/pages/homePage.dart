import 'package:alertify/data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late final dynamic dataList;

  @override
  void initState () {
    super.initState();

    dataList = Provider.of<Data>(context,listen: false);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xfff2f8fa),
        child: SafeArea(
          child: Column(
            children: [
              //App Bar
              Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Icon(
                          Icons.search,
                          size: 30,
                      ),
                    ),
                    Text(
                        "A L E R T I F Y",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17
                        ),
                    ),
                    InkWell(
                      child: Icon(
                          Icons.settings,
                          size: 30,
                      ),
                    )
                  ],
                ),
              ),

              //Info state
              Container(
                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 25),
                margin: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                decoration: BoxDecoration(
                    color: Color(0xff003e83),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "Today Mar 17",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14
                        ),
                    ),

                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                color: Colors.white.withOpacity(0.2),
                                width: 2,
                              ),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "12",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                              Text(
                                "changements",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontSize: 14
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                color: Colors.white.withOpacity(0.2),
                                width: 2,
                              ),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "12",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                              Text(
                                "changements",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontSize: 14
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "12",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                              Text(
                                "changements",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontSize: 14
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),

              //Filtre
              Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                margin: EdgeInsets.only(bottom: 25),
                color: Colors.white,
                child: Row(
                  children: [
                    Icon(Icons.gps_not_fixed, color: Color(0xff003e83),),
                    SizedBox(width: 8,),
                    Text(
                        "Filtrer les alertes",
                        style: TextStyle(
                          color: Color(0xff003e83)
                        ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
