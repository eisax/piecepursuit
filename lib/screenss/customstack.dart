import 'package:flutter/material.dart';

class CustomStack extends StatelessWidget {
  const CustomStack({
    required this.image,
    required this.icon,
    required this.text1,
    required this.padding_top,
    required this.padding_left,
    required this.padding,
    required this.color,
  });
  final String image;
  final String icon;
  final String text1;

  final double padding_top;
  final double padding_left;
  final double padding;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 250,
      
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  text1,
                  style: const TextStyle(
                      color: Color(0xff2D2D2D),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                  
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)
                      ),
                      child: Image.asset(
                        image,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
