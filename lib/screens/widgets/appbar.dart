import 'package:flutter/material.dart';
import 'package:piece_pursuit/screenss/constance.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
   shape: Border(
    bottom: BorderSide(
      color: darkbrown,
      width: 2
    )
  ),

      leadingWidth: 80,
      leading: null,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              darkbrown.withOpacity(0.9),
              darkbrown.withOpacity(0.8),
              lightbrown,
              darkbrown.withOpacity(0.8),
              darkbrown.withOpacity(0.9),
            ],
          ),
        ),
      ),
      automaticallyImplyLeading: false,
      actions: [
        ElevatedButton(
          onPressed: () {
           Navigator.of(context).pop();
          },
          style: ElevatedButton.styleFrom(
            minimumSize: Size(25, 25),
            backgroundColor: green,
            elevation: 0.0,
            shape: CircleBorder(),
          ),
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 16,
          ),
        ),
        ExpandedContainer(
          icon: Icons.diamond_sharp,
          text: '44',
        ),
        ExpandedContainer(
          iconPath: 'assets/images/gem.png',
          text: '2000',
        ),
        Stack(
          children: [
            ElevatedButton(
              onPressed: () {
                // Add your onPressed logic here
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(25, 25),
                backgroundColor: green,
                elevation: 0.0,
                shape: CircleBorder(),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 16,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
      elevation: 30,
    );
  }
}

class ExpandedContainer extends StatelessWidget {
  final IconData? icon;
  final String text;
  final String? iconPath;

  ExpandedContainer({this.icon, required this.text, this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
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
            icon != null
                ? Icon(
                    icon,
                    color: Colors.purple,
                  )
                : Image.asset(
                    iconPath!,
                    width: 20,
                  ),
            SizedBox(width: 8),
            Text(
              ' $text',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
