import 'package:flutter/material.dart';
import 'package:piece_pursuit/screens/widgets/appbar.dart';
import 'package:piece_pursuit/screens/widgets/customalertdialog.dart';
import 'package:piece_pursuit/screenss/constance.dart';

class GamePlayScreen extends StatelessWidget {
  const GamePlayScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightbrown,
      appBar: CustomAppBar(),
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
                                border: Border.all(width: 1, color: darkbrown)),
                            child: Icon(Icons.image,
                                color:
                                    const Color.fromARGB(255, 255, 255, 255)),
                          ),
                          Text(
                            'Preview',
                            style: TextStyle(fontSize: 10),
                          ),
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
                                border: Border.all(width: 1, color: darkbrown)),
                            child: Icon(Icons.shuffle,
                                color:
                                    const Color.fromARGB(255, 255, 255, 255)),
                          ),
                          Text('Shuffle',
                          style: TextStyle(fontSize: 10),),
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
                              border: Border.all(width: 1, color: darkbrown),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Icon(Icons.lightbulb,
                                color:
                                    const Color.fromARGB(255, 255, 255, 255)),
                          ),
                          Text('Hint',
                          style: TextStyle(fontSize: 10),),
                        ],
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){
                    CustomAlertDialog.show(
              context,
              content: Text('This is a dynamically added text.'),
            );
                  },
                  child: Container(
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
                                  border: Border.all(width: 1, color: darkbrown)),
                              child: Icon(Icons.restart_alt,
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255)),
                            ),
                            Text('Restart',
                            style: TextStyle(fontSize: 10),),
                          ],
                        ),
                      ],
                    ),
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
      decoration: BoxDecoration(
          color: lightbrown,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8))),
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
