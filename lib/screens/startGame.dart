import 'package:flutter/material.dart';
import 'package:piece_pursuit/screens/constance.dart';

class StartGameScreen extends StatelessWidget {
  const StartGameScreen({Key? key});

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Puzzle container
            Container(
              width: 340,
              height: 340,
              decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    image: AssetImage('assets/bg.jpeg'), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(12.0),
              ),
              // Replace with your puzzle representation
              // Add your puzzle widget here
            ),
            SizedBox(height: 40), // Add space between puzzle and buttons

            // Square buttons horizontally
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  width: 60,
                  height: 60,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 38,
                            height: 38,
                            decoration: BoxDecoration(
                             color: gold,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Icon(Icons.image,
                                color:
                                    const Color.fromARGB(255, 255, 255, 255)),
                          ),
                          Text('Preview'),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  width: 60,
                  height: 60,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 38,
                            height: 38,
                            decoration: BoxDecoration(
                             color: gold,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Icon(Icons.shuffle,
                                color:
                                    const Color.fromARGB(255, 255, 255, 255)),
                          ),
                          Text('Shuffle'),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  width: 60,
                  height: 60,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 38,
                            height: 38,
                            decoration: BoxDecoration(
                               color: gold,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Icon(Icons.lightbulb,
                                color:
                                    const Color.fromARGB(255, 255, 255, 255)),
                          ),
                          Text('Hint'),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  width: 60,
                  height: 60,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 38,
                            height: 38,
                            decoration: BoxDecoration(
                              color: gold,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Icon(Icons.restart_alt,
                                color:
                                    const Color.fromARGB(255, 255, 255, 255)),
                          ),
                          Text('Restart'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
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
