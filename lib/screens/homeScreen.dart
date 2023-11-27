// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, file_names, library_private_types_in_public_api

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:piece_pursuit/screens/constance.dart';

class PuzzleGameScreen extends StatelessWidget {
  const PuzzleGameScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightbrown,
      appBar: AppBar(
        automaticallyImplyLeading: true, // This will show the back arrow
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white, // Change the arrow color to white
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                darkbrown.withOpacity(0.9),
                lightbrown,
                darkbrown.withOpacity(0.9)
              ],
            ),
            // borderRadius: BorderRadius.vertical(
            //               bottom: Radius.circular(10), // Set your desired shape
            //             ),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            width: 120,
            height: 30,
            decoration: BoxDecoration(
              color: darkbrown,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: lightbrown,
                ),
                BoxShadow(
                  color: Colors.black,
                  spreadRadius: -12,
                  blurRadius: 12,
                ),
              ],
            ),
            child: Row(
              children: [
                SizedBox(width: 8),
                Icon(Icons.diamond_sharp,
                    color: Color.fromRGBO(98, 59, 255, 1)),
                SizedBox(width: 8),
                Text(
                  ' 44',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            width: 120,
            height: 30,
            decoration: BoxDecoration(
              color: darkbrown,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              children: [
                SizedBox(width: 8),
                Icon(Icons.star, color: Colors.orange),
                SizedBox(width: 8),
                Text(
                  ' 2000',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => SettingsPopup(),
              );
            },
          ),
        ],
        elevation: 30,
      ),
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
                "Choose Puzzles",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
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
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 8.0,
                      ),
                      itemCount: data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF401604),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 100,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.network(
                                      data[index]["url"],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                    Container(
                                   margin: EdgeInsets.only(top: 4.0),
                                    width: 150,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: lightbrown,
                                      borderRadius: BorderRadius.circular(8.0),
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
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                        ' Animals',
                                        style: TextStyle(color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                              ],
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
       decoration:BoxDecoration(color: lightbrown,
      borderRadius:BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8))
      ),
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
          // ListTile(
          //   leading: Icon(Icons.language),
          //   title: Text('Language'),
          //   onTap: () {
          //     // Handle language option
          //   },
          // ),
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
