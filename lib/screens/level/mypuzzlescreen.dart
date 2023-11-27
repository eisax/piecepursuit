import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:piece_pursuit/screens/gameplayscreen/gameplay.dart';
import 'package:piece_pursuit/screens/widgets/appbar.dart';
import 'package:piece_pursuit/screenss/constance.dart';
import 'package:piece_pursuit/screenss/startGame.dart';

class PuzzleLevelScreen extends StatefulWidget {
  const PuzzleLevelScreen({Key? key});

  @override
  State<PuzzleLevelScreen> createState() => _PuzzleLevelScreenState();
}

class _PuzzleLevelScreenState extends State<PuzzleLevelScreen> {
  int activeDay = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightbrown,
    appBar:  CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Puzzle container
            Container(
              margin: EdgeInsets.only(bottom: 8.0),
              child: Text(
                "Select Level",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: darkbrown),
              ),
            ),
            Expanded(
              child: FutureBuilder(
                future: DefaultAssetBundle.of(context)
                    .loadString('assets/puzzles.json'),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    final List<dynamic> data =
                        json.decode(snapshot.data.toString());

                    return GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemCount: data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const GamePlayScreen()),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              // color: gold,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        height: 100,
                                        width: 150,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.network(
                                            data[index]["url"],
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        child: Container(
                                          height: 100,
                                          width: 150,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.black
                                                  .withOpacity(0.6)),
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.lock,
                                                size: 16,
                                                color: Colors.white,
                                              )),
                                        ),
                                      ),
                                      Positioned(
                                        child: Container(
                                          height: 100,
                                          width: 150,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.all(5),
                                                width: 50,
                                                decoration: BoxDecoration(
                                                    color: green,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topLeft: Radius
                                                                .circular(10),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    10))),
                                                child: Center(
                                                  child: Text(
                                                    "unlock",
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 4.0),
                                    width: 150,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: darkbrown,
                                      borderRadius: BorderRadius.circular(5.0),
                                      boxShadow: [
                                        BoxShadow(
                                          color: lightbrown,
                                        ),
                                        BoxShadow(
                                          color: darkbrown,
                                          spreadRadius: -12,
                                          blurRadius: 12,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Level ${index + 1}',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsPopup extends StatefulWidget {
  @override
  _SettingsPopupState createState() => _SettingsPopupState();
}

class _SettingsPopupState extends State<SettingsPopup> {
  bool _isSoundOn = true; // Default value, change it according to your logic

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: [
          ListTile(
            leading: Icon(Icons.volume_up),
            title: Text('Sound'),
            trailing: Switch(
              value: _isSoundOn,
              onChanged: (value) {
                setState(() {
                  _isSoundOn = value;
                  // Handle sound option based on the value (on/off)
                });
              },
            ),
          ),
          ListTile(
            leading: Icon(Icons.music_note),
            title: Text('Music'),
            trailing: Switch(
              value: _isSoundOn,
              onChanged: (value) {
                setState(() {
                  _isSoundOn = value;
                  // Handle sound option based on the value (on/off)
                });
              },
            ),
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help'),
            onTap: () {
              // Handle help option
            },
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Language'),
            onTap: () {
              // Handle language option
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Quit'),
            onTap: () {
              // Handle quit option
            },
          ),
        ],
      ),
    );
  }
}
