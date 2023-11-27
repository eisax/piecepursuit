import 'package:flutter/material.dart';
import 'package:piece_pursuit/screens/level/mypuzzlescreen.dart';
import 'package:piece_pursuit/screens/widgets/achievementsdialog.dart';
import 'package:piece_pursuit/screens/widgets/appbar.dart';
import 'package:piece_pursuit/screenss/constance.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar:   CustomAppBar(),
      backgroundColor: Colors.transparent,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.center,
            radius: 5, 
            colors: [
              lightbrown.withOpacity(0.5), 
              gold.withOpacity(
                  0.0), 
            ],
            stops: [0.3, 1.0], 
          ),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Opacity(
                  opacity: 0.1,
                  child: Container(
                    height: height * 0.5,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/puzzle.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                  ),
                )
              ],
            ),
            Positioned(
                child: Container(
              padding: EdgeInsets.only(top: height * 0.15),
              width: width,
              height: height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width,
                    child: Image.asset("assets/logo.png"),
                  ),
                  Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(16),
                            margin: EdgeInsets.symmetric(vertical: 16),
                            decoration: BoxDecoration(
                                color: lightbrown,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 3, color: darkbrown)),
                            child: Stack(
                              children: [
                                Container(
                                  width: width * 0.75,
                                  padding: EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: darkbrown,
                                    borderRadius: BorderRadius.circular(10),
                                    border:
                                        Border.all(width: 3, color: darkbrown),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const PuzzleLevelScreen()),
                                          );
                                          setState(() {});
                                        },
                                        style: ElevatedButton.styleFrom(
                                          minimumSize:
                                              Size(double.infinity, 50),
                                          backgroundColor: gold,
                                          elevation: 0.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.extension,
                                              color: lightbrown,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'My Puzzles',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          AchievementsAlertDialog.show(context);
                                          setState(() {});
                                        },
                                        style: ElevatedButton.styleFrom(
                                          minimumSize:
                                              Size(double.infinity, 50),
                                          backgroundColor: gold,
                                          elevation: 0.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.emoji_events,
                                              color: lightbrown,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Achievements',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          setState(() {});
                                        },
                                        style: ElevatedButton.styleFrom(
                                          minimumSize:
                                              Size(double.infinity, 50),
                                          backgroundColor: gold,
                                          elevation: 0.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.settings,
                                              color: lightbrown,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Settings',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          setState(() {});
                                        },
                                        style: ElevatedButton.styleFrom(
                                          minimumSize:
                                              Size(double.infinity, 50),
                                          backgroundColor: gold,
                                          elevation: 0.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.shopping_cart,
                                              color: lightbrown,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Visit Store',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
