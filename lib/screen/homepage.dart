import 'package:flutter/material.dart';

import '../Widgets/custom_card.dart';
import '../Widgets/custom_card2.dart';
import '../Widgets/nav_bar.dart';
import '../Widgets/tags_catagory.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff15202B),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 32, left: 24, right: 24),
          child: ListView(
            children: [
              //nav bar custom widget
              NavBar(),

              SizedBox(height: 32),
              // Tag Catagory custom widget

              const TagCatagory(),
              SizedBox(height: 32),
              //List card
              Container(
                height: 420,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CustomCard(),
                    CustomCard(),
                    CustomCard(),
                  ],
                ),
              ),

              Text(
                "Trending Collections",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  CustomCard2(),
                  CustomCard2(),
                  CustomCard2(),
                  CustomCard2(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
