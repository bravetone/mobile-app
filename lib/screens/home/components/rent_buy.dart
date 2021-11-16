import 'package:flutter/material.dart';

import 'package:line_icons/line_icons.dart';
import 'package:shop_app/screens/home/components/body.dart';
import 'package:shop_app/screens/home/components/body_buy.dart';
import 'package:shop_app/screens/home/components/home_header.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int searchTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            child: SafeArea(
                child: Stack(
              children: [
                Positioned(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white24),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 16),
                          child: Row(
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      Navigator.pushNamed(
                                          context, Bodybuy.routeName);
                                      searchTabIndex = 0;
                                    });
                                  },
                                  child: Column(
                                    children: [
                                      Text(
                                        "House Buy",
                                        style: TextStyle(
                                            color: searchTabIndex == 0
                                                ? Colors.deepOrange
                                                : Colors.black.withOpacity(0.8),
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 4),
                                      Container(
                                          width: 100,
                                          height: 2,
                                          color: searchTabIndex == 0
                                              ? Colors.deepOrange
                                              : Colors.transparent)
                                    ],
                                  )),
                              SizedBox(width: 16),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      Navigator.pushNamed(
                                          context, Body.routeName);
                                      searchTabIndex = 1;
                                    });
                                  },
                                  child: Column(
                                    children: [
                                      Text(
                                        "House Rent",
                                        style: TextStyle(
                                            color: searchTabIndex == 1
                                                ? Colors.deepOrange
                                                : Colors.black.withOpacity(0.8),
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 4),
                                      Container(
                                          width: 100,
                                          height: 2,
                                          color: searchTabIndex == 1
                                              ? Colors.deepOrange
                                              : Colors.transparent)
                                    ],
                                  ))
                            ],
                          ),
                        ),
                        HomeHeader()
                      ],
                    ),
                  ),
                  // top: 20,
                  // left: 0,
                  // right: 0,
                  // bottom: MediaQuery.of(context).size.height / 1.6,
                ),
              ],
            )),
          ),
        ],
      ),
    );
  }
}
