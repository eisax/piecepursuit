import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:piece_pursuit/screens/widgets/barner.dart';
import 'package:piece_pursuit/screens/widgets/progressbar.dart';
import 'package:piece_pursuit/screenss/constance.dart';

class CustomAlertDialog {
  static void show(BuildContext context, {required Widget content}) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    showGeneralDialog(
      barrierColor: Colors.transparent,
      context: context,
      transitionDuration: Duration(milliseconds: 100),
      pageBuilder: (_, __, ___) {
        return Scaffold(
         backgroundColor: darkbrown.withOpacity(0.7),
         
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: width,
                  height: height * 0.75,
                  child: Stack(
                    children: [
                      Container(
                        height: height * 0.6,
                        padding: EdgeInsets.all(16),
                        margin: EdgeInsets.all(height * 0.05),
                        decoration: BoxDecoration(
                          color: darkbrown,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(width: 2, color: lightbrown),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 16,
                              ),
                              Column(
                                children: [
                                  Center(
                                    child: Container(
                                      width: 90,
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.black),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SizedBox(
                                            width: 20,
                                            child: Image(
                                              image: AssetImage(
                                                  'assets/images/gem.png'),
                                            ),
                                          ),
                                          Text(
                                            "0",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w800,
                                                color: lightbrown),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Level Complete",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 18,
                                            color: green),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        height: 18,
                                        decoration: BoxDecoration(
                                            color: Color(0xFF200705),
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      ),
                                      Positioned(
                                        child: MyProgressBar(
                                            width: 200,
                                            height: 18,
                                            color: gold),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                child: Lottie.asset(
                                  'assets/treasure.json',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(40, 40),
                                      backgroundColor: green,
                                      elevation: 0.0,
                                      shape: CircleBorder(
                                        side: BorderSide(
                                            color: Colors.white, width: 2.0),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.home_filled,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                      ],
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(40, 40),
                                      backgroundColor: green,
                                      elevation: 0.0,
                                      shape: CircleBorder(
                                        side: BorderSide(
                                            color: Colors.white, width: 2.0),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.refresh,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                      ],
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      // Add your onPressed logic here
                                    },
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(40, 40),
                                      backgroundColor: green,
                                      elevation: 0.0,
                                      shape: CircleBorder(
                                        side: BorderSide(
                                            color: Colors.white, width: 2.0),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.play_arrow,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: TrapeziumWidget(),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
    ;
  }
}
