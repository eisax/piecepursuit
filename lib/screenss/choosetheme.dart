import 'package:animator/animator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:piece_pursuit/screenss/constance.dart';
import 'package:piece_pursuit/screenss/customstack.dart';
import 'package:piece_pursuit/screenss/homeScreen.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: 900,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                lightbrown,
                darkbrown,
              ],
            ),
          ),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      
                      child: Row(
                        children: [
                         
                          const SizedBox(width: 5),
                          Text(
                            '0 points',
                            style: const TextStyle(
                              color: Color(0xff001663),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Image.asset(
                            'assets/images/gem.png',
                            width: 25,
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        // Add your settings action
                      },
                      icon: const Icon(Icons.settings),
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Choose Puzzle',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    letterSpacing: 1,
                  ),
                ),
              ),
              
              
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: false,
                  autoPlayInterval: const Duration(seconds: 3),
                  height: 400,
                  enlargeCenterPage: true,
                  padEnds: true,
                  viewportFraction: .7,
                ),
                items: [
                
                  InkWell(
                    onTap: () {
                       Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const PuzzleGameScreen()),
                            );
                    },
                    child: const CustomStack(
                      image: 'assets/images/Component_4.png',
                      icon: 'assets/images/NetBar.png',
                      text1: 'Tom and Jerry',
                      
                      padding_left: 7,
                      padding_top: 80,
                      padding: 28,
                      color: Color(0xff444444),
                    ),
                  ),
               
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
