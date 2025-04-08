import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:piece_pursuit/screens/widgets/barner.dart';
import 'package:piece_pursuit/screens/widgets/progressbar.dart';
import 'package:piece_pursuit/screenss/constance.dart';

class AchievementsAlertDialog {
  static void show(BuildContext context) {
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
                        margin: EdgeInsets.all(height * 0.05),
                        decoration: BoxDecoration(
                          color: creme,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(width: 3, color: gold),
                        ),
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0, left: 10),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: Size(35, 35),
                                        backgroundColor: Colors.red,
                                        elevation: 0.0,
                                        shape: CircleBorder(
                                          side: BorderSide(
                                              color: Colors.white, width: 2.0),
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.close,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: Size(40, 80),
                                        backgroundColor: creme,
                                        elevation: 2.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          side: BorderSide(
                                              color: darkbrown.withOpacity(0.5),
                                              width: 1.0),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 18.0, bottom: 0),
                                                child: Text(
                                                  "Completed 0 Puzzles",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: width * 0.03),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    width: width * 0.3,
                                                    child: Stack(
                                                      children: [
                                                        Container(
                                                          height: 18,
                                                          width: 200,
                                                          decoration: BoxDecoration(
                                                              color: Color(
                                                                  0xFF200705),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5)),
                                                        ),
                                                        Positioned(
                                                          child: MyProgressBar(
                                                            width: width * 0.3,
                                                            height: 18,
                                                            color: green,
                                                            borderRadius: 5,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 40.0),
                                                    child: Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 30,
                                                          child: Image(
                                                            image: AssetImage(
                                                                'assets/coins.png'),
                                                          ),
                                                        ),
                                                        Positioned(
                                                          child: Text(
                                                            "20",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize:
                                                                  width * 0.04,
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: Size(40, 80),
                                        backgroundColor: creme,
                                        elevation: 2.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          side: BorderSide(
                                              color: darkbrown.withOpacity(0.5),
                                              width: 1.0),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 18.0, bottom: 0),
                                                child: Text(
                                                  "Completed 0 Puzzles without Hints",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: width * 0.03),
                                                  softWrap: true,
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    width: width * 0.3,
                                                    child: Stack(
                                                      children: [
                                                        Container(
                                                          height: 18,
                                                          width: 200,
                                                          decoration: BoxDecoration(
                                                              color: Color(
                                                                  0xFF200705),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5)),
                                                        ),
                                                        Positioned(
                                                          child: MyProgressBar(
                                                            width: width * 0.3,
                                                            height: 18,
                                                            color: green,
                                                            borderRadius: 5,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 40.0),
                                                    child: Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 30,
                                                          child: Image(
                                                            image: AssetImage(
                                                                'assets/coins.png'),
                                                          ),
                                                        ),
                                                        Positioned(
                                                          child: Text(
                                                            "20",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize:
                                                                  width * 0.04,
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: Size(40, 80),
                                        backgroundColor: creme,
                                        elevation: 2.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          side: BorderSide(
                                              color: darkbrown.withOpacity(0.5),
                                              width: 1.0),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 18.0, bottom: 0),
                                                child: Text(
                                                  "Completed 0 Piences Puzzle",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: width * 0.03,
                                                  ),
                                                  softWrap: true,
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    width: width * 0.3,
                                                    child: Stack(
                                                      children: [
                                                        Container(
                                                          height: 18,
                                                          width: 200,
                                                          decoration: BoxDecoration(
                                                              color: Color(
                                                                  0xFF200705),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5)),
                                                        ),
                                                        Positioned(
                                                          child: MyProgressBar(
                                                            width: width * 0.3,
                                                            height: 18,
                                                            color: green,
                                                            borderRadius: 5,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 40.0),
                                                    child: Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 30,
                                                          child: Image(
                                                            image: AssetImage(
                                                                'assets/coins.png'),
                                                          ),
                                                        ),
                                                        Positioned(
                                                          child: Text(
                                                            "20",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize:
                                                                  width * 0.04,
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: Size(width * 0.5, 40),
                                        backgroundColor: green,
                                        elevation: 2.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          side: BorderSide(
                                              color: darkbrown.withOpacity(0.5),
                                              width: 1.0),
                                        ),
                                      ),
                                      child: Text(
                                        "Claim All",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              width: width * 0.65,
                              height: 60,
                              child: Stack(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          width: width * 0.55,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 2, color: lightbrown),
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                darkbrown,
                                                darkbrown,
                                                lightbrown,
                                                darkbrown,
                                                darkbrown,
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Positioned(
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5, top: 1),
                                          child: SizedBox(
                                            width: 60,
                                            child: Image(
                                              image:
                                                  AssetImage('assets/coin.png'),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 5, top: 1),
                                          child: SizedBox(
                                            width: 60,
                                            child: Image(
                                              image:
                                                  AssetImage('assets/coin.png'),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
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
